docker stop nlunsat -f 2>/dev/null || true
docker rm nlunsat -f 2>/dev/null || true
docker rmi nlunsat-tool:latest --force 2>/dev/null || true

# Build the docker image with name nlunsat-tool created.
docker build --build-arg UV_IMAGE=ghcr.io/astral-sh/uv:python3.13-bookworm-slim -t nlunsat-tool:latest -f Dockerfile .

# Run the docker image, docker container with name nlusat created.
docker run -v $PWD:/export --name nlunsat --env-file .env -dit nlunsat-tool:latest
docker start -ai nlunsat