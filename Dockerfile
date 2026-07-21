# syntax=docker/dockerfile:1

ARG UV_IMAGE=ghcr.io/astral-sh/uv:python3.13-bookworm-slim
FROM ${UV_IMAGE}

ENV PYTHONUNBUFFERED=1 \
    UV_COMPILE_BYTECODE=1 \
    UV_LINK_MODE=copy \
    UV_NO_CACHE=1 \
    PATH="/app/.venv/bin:${PATH}"

# main.py compiles benchmark code and uses AFL++ during full framework runs.
RUN apt-get update \
    && apt-get install --no-install-recommends --yes \
        gcc \
        g++ \
        clang \
        afl \
        afl++ \
        bash \
        ssh \
        git \
        curl \
        openssh-server \
        nano \
        build-essential \
        ca-certificates \
        z3 \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /app

WORKDIR /app

# Install dependencies separately so source-only changes reuse this layer.
COPY pyproject.toml uv.lock .python-version ./
RUN uv sync --locked --no-dev --no-install-project

# The application writes generated solver/fuzzer files beneath /app at runtime.
COPY . .

ENTRYPOINT ["/usr/bin/bash"]
