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
        afl++ \
        build-essential \
        ca-certificates \
        z3 \
    && rm -rf /var/lib/apt/lists/*

RUN useradd --create-home --uid 10001 appuser \
    && mkdir -p /app \
    && chown appuser:appuser /app

WORKDIR /app

# Install dependencies separately so source-only changes reuse this layer.
COPY pyproject.toml uv.lock .python-version ./
RUN uv sync --locked --no-dev --no-install-project

# The application writes generated solver/fuzzer files beneath /app at runtime.
COPY --chown=appuser:appuser . .

USER appuser

ENTRYPOINT ["uv", "run", "--no-sync", "python", "main.py"]
