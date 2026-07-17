# Docker image guide

The repository Dockerfile uses the Astral `uv` image with Python 3.13. It installs the dependencies pinned in `uv.lock`, copies the application and benchmarks, and runs `main.py` as the container entrypoint.

Run all commands in this guide from the repository root.

## Prerequisites

- Docker Engine or Docker Desktop with the `docker` command available.
- An `.env` file containing the credentials required by the selected model. The file is excluded from the image by `.dockerignore`.

## Update the Dockerfile or dependencies

Edit `Dockerfile` when the base image, operating-system packages, build steps, or runtime command need to change.

The default Astral uv base image is declared at the top of the Dockerfile:

```dockerfile
ARG UV_IMAGE=ghcr.io/astral-sh/uv:python3.13-bookworm-slim
```

Change that value to update the default base image. Alternatively, test another Astral uv image without editing the file:

```bash
docker build --build-arg UV_IMAGE=ghcr.io/astral-sh/uv:python3.13-bookworm-slim -t nlusat-tool:latest .
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
docker build --pull -t nlusat-tool:latest .
```

Confirm that the image exists:

```bash
docker image ls nlusat-tool
```

## Run main.py

Arguments placed after the image name are passed directly to `main.py`.

Show the command-line help:

```bash
docker run --rm nlusat-tool:latest --help
```

Run the OpenAI example from `README.md` and load credentials at runtime:

```bash
docker run --rm --env-file .env nlusat-tool:latest \
  -i benchmarks/BV-benchamrks/bvisalpha-16/test000030.json \
  -t 1 -v --usegpt --model gpt-5-nano-2025-08-07 --stop
```

Run the AWS Bedrock example:

```bash
docker run --rm --env-file .env nlusat-tool:latest \
  -i benchmarks/BV-benchamrks/bvisalpha-16/test000030.json \
  -t 1 -v --usebedrock --model openai.gpt-oss-120b-1:0 --stop
```

To mount the host repository's `benchmarks` directory over the image's benchmark directory, use `-v`:

```bash
docker run --rm --env-file .env \
  -v "$(pwd)/benchmarks:/app/benchmarks" \
  nlusat-tool:latest \
  -i benchmarks/BV-benchamrks/bvisalpha-16/test000030.json \
  -t 1 -v --usegpt --model gpt-5-nano-2025-08-07 --stop
```

The host directory must exist before starting the container. Because this is a bind mount, files created or changed under `/app/benchmarks` are reflected in the host `benchmarks` directory.

Do not use `COPY .env` or an `ENV` instruction for secrets in the Dockerfile. Pass them with `--env-file` or your container platform's secret mechanism.

If a local Ollama server runs on the Docker host, the container must be able to reach the host. On Linux, add this option to `docker run`:

```bash
--add-host=host.docker.internal:host-gateway
```

Configure the application's Ollama base URL to use `host.docker.internal` rather than `localhost`; inside a container, `localhost` refers to the container itself.

## Save the image as a tar archive

Use `docker image save` to preserve the image, its layers, and its tags:

```bash
docker image save --output nlusat-tool-latest.tar nlusat-tool:latest
```

Check the archive and optionally record a checksum before transferring it:

```bash
ls -lh nlusat-tool-latest.tar
sha256sum nlusat-tool-latest.tar > nlusat-tool-latest.tar.sha256
```

The tar archive is excluded by `.dockerignore`, preventing it from being copied into later image builds.

## Load the image from the tar archive

On the destination machine, verify the archive if a checksum was created:

```bash
sha256sum --check nlusat-tool-latest.tar.sha256
```

Load the image:

```bash
docker image load --input nlusat-tool-latest.tar
```

Confirm the restored tag and test the entrypoint:

```bash
docker image ls nlusat-tool
docker run --rm nlusat-tool:latest --help
```

An image archive is platform-specific. This repository also contains precompiled benchmark `.o` files, so use the archive only on a compatible CPU architecture. Rebuild those benchmark objects for the target architecture before producing an image for a different platform.
