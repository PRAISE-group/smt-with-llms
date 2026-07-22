# Docker image guide

The repository Dockerfile uses the Astral `uv` image with Python 3.13. It installs the dependencies pinned in `uv.lock`, copies the application and benchmarks, and starts an interactive shell by default as the container entrypoint.

Run all commands in this guide from the repository root.

## Prerequisites

- Docker Engine or Docker Desktop with the `docker` command available.
- An `.env` file containing the credentials required by the selected model. The file is excluded from the image by `.dockerignore`.

## Install and verify Docker

Use the official installation guide for your system:

- [Docker Engine installation for supported Linux distributions](https://docs.docker.com/engine/install/)
- [Docker Engine installation on Ubuntu](https://docs.docker.com/engine/install/ubuntu/)
- [Docker Desktop installation on macOS](https://docs.docker.com/desktop/setup/install/mac-install/)

After installation, check the Docker CLI version and confirm that the daemon is reachable:

```bash
docker --version
docker info
```

Finally, download and run Docker's test image:

```bash
docker run --rm hello-world
```

If the installation requires root access and the current user has not been configured to use Docker, prefix the verification commands with `sudo`.

## Update the Dockerfile or dependencies

Edit `Dockerfile` when the base image, operating-system packages, build steps, or runtime command need to change.

The default Astral uv base image is declared at the top of the Dockerfile:

```dockerfile
ARG UV_IMAGE=ghcr.io/astral-sh/uv:python3.13-bookworm-slim
```

Change that value to update the default base image. Alternatively, test another Astral uv image without editing the file:

```bash
docker build --build-arg UV_IMAGE=ghcr.io/astral-sh/uv:python3.13-bookworm-slim -t nlunsat-tool:latest .
```

For Python dependency changes, update `pyproject.toml` and regenerate the lock file before rebuilding:

```bash
uv lock
uv sync
```

Commit `pyproject.toml` and `uv.lock` together. The Docker build uses `uv sync --locked`, so it fails if those files are inconsistent instead of silently changing the dependency versions.

## Build the image

Build and tag the image:

```bash
docker build --pull -t nlunsat-tool:latest .
```

Confirm that the image exists:

```bash
docker image ls nlunsat-tool
```

## Open a shell

The image now opens `/usr/bin/zsh -il` by default with `oh-my-zsh` configured for the root user, so `docker run`, `docker start`, and `docker attach` can all land in the container shell when the container was created with `-it`. The shell uses the built-in `robbyrussell` theme and enables the `git`, `python`, and `pip` plugins.

Start a fresh interactive shell:

```bash
docker run --rm -it --env-file .env nlunsat-tool:latest
```

If you bind-mount a host directory and want the container to write into it on Linux, map the container user to your host UID and GID:

```bash
docker run --rm -it --env-file .env \
  -e APP_UID="$(id -u)" \
  -e APP_GID="$(id -g)" \
  -v "$(pwd)/benchmarks:/app/benchmarks" \
  nlunsat-tool:latest
```

Keep the shell container running in the background, then attach later:

```bash
docker run -dit --name nlunsat-shell --env-file .env nlunsat-tool:latest
docker attach nlunsat-shell
```

If the container already exists but is stopped, restart it and attach:

```bash
docker start -ai nlunsat-shell
```

Detach from the shell without stopping the container with `Ctrl-p` followed by `Ctrl-q`.

## Run main.py

Because the default entrypoint is now a shell, invoke the application explicitly:

```bash
docker run --rm --env-file .env nlunsat-tool:latest \
  uv run --no-sync python main.py --help
```

Run the OpenAI example from `README.md`:

```bash
docker run --rm --env-file .env nlunsat-tool:latest \
  uv run --no-sync python main.py \
  -i benchmarks/BV-benchamrks/bvisalpha-16/test000030.json \
  -t 1 -v --usegpt --model gpt-5-nano-2025-08-07 --stop
```

Run the AWS Bedrock example:

```bash
docker run --rm --env-file .env nlunsat-tool:latest \
  uv run --no-sync python main.py \
  -i benchmarks/BV-benchamrks/bvisalpha-16/test000030.json \
  -t 1 -v --usebedrock --model openai.gpt-oss-120b-1:0 --stop
```

To mount the host repository's `benchmarks` directory over the image's benchmark directory and use a benchmark directly from that mounted path, run:

```bash
docker run --rm --env-file .env \
  -e APP_UID="$(id -u)" \
  -e APP_GID="$(id -g)" \
  -v "$(pwd)/benchmarks:/app/benchmarks" \
  nlunsat-tool:latest \
  uv run --no-sync python main.py \
  -i /app/benchmarks/BV-benchamrks/bvisalpha-16/test000030.json \
  -t 1 -v --usegpt --model gpt-5-nano-2025-08-07 --stop
```

Here, `$(pwd)/benchmarks` is the host path and `/app/benchmarks` is its mounted path inside the container. The host directory must exist before starting the container. Because this is a read-write bind mount, files created or changed under `/app/benchmarks` are reflected in the host `benchmarks` directory.

Do not use `COPY .env` or an `ENV` instruction for secrets in the Dockerfile. Pass them with `--env-file` or your container platform's secret mechanism.

If a local Ollama server runs on the Docker host, the container must be able to reach the host. On Linux, add this option to `docker run`:

```bash
--add-host=host.docker.internal:host-gateway
```

Configure the application's Ollama base URL to use `host.docker.internal` rather than `localhost`; inside a container, `localhost` refers to the container itself.

## Save the image as a tar archive

Use `docker image save` to preserve the image, its layers, and its tags:

```bash
docker image save --output nlunsat-tool-latest.tar nlunsat-tool:latest
```

Check the archive and optionally record a checksum before transferring it:

```bash
ls -lh nlunsat-tool-latest.tar
sha256sum nlunsat-tool-latest.tar > nlunsat-tool-latest.tar.sha256
```

The tar archive is excluded by `.dockerignore`, preventing it from being copied into later image builds.

## Load the image from the tar archive

On the destination machine, verify the archive if a checksum was created:

```bash
sha256sum --check nlunsat-tool-latest.tar.sha256
```

Load the image:

```bash
docker image load --input nlunsat-tool-latest.tar
```

Confirm the restored tag and test the shell entrypoint:

```bash
docker image ls nlunsat-tool
docker run --rm -it nlunsat-tool:latest
```

An image archive is platform-specific. This repository also contains precompiled benchmark `.o` files, so use the archive only on a compatible CPU architecture. Rebuild those benchmark objects for the target architecture before producing an image for a different platform.

## Running and testing docker image

```bash
cd smt-with-llms
git checkout prompts

# Build the docker image
docker build --build-arg UV_IMAGE=ghcr.io/astral-sh/uv:python3.13-bookworm-slim -t nlunsat-tool:latest -f Dockerfile .

# Run the docker image, docker container with name nlunsat created.
docker run -v $PWD:/export --name nlunsat -dit nlunsat-tool:latest
docker attach nlunsat

# From the docker terminal
./runUnsat.sh benchSmokeTest
```
