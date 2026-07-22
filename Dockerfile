# syntax=docker/dockerfile:1

ARG UV_IMAGE=ghcr.io/astral-sh/uv:python3.13-bookworm-slim
FROM ${UV_IMAGE}

ENV PYTHONUNBUFFERED=1 \
    UV_COMPILE_BYTECODE=1 \
    UV_LINK_MODE=copy \
    UV_NO_CACHE=1 \
    PATH="/app/.venv/bin:${PATH}" \
    SHELL="/usr/bin/zsh" \
    ZSH="/root/.oh-my-zsh" \
    TERM="xterm-256color"

# main.py compiles benchmark code and uses AFL++ during full framework runs.
RUN apt-get update \
    && apt-get install --no-install-recommends --yes \
        gcc \
        g++ \
        clang \
        cmake \
        cmake-data \
        ninja-build \
        make \
        afl \
        afl++ \
        bash \
        zsh \
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

RUN git clone --depth=1 https://github.com/ohmyzsh/ohmyzsh.git "${ZSH}" \
    && git clone --depth=1 https://github.com/marlonrichert/zsh-autocomplete.git "${ZSH}/custom/plugins/zsh-autocomplete" \
    && git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH}/custom/plugins/zsh-syntax-highlighting" \
    && cp "${ZSH}/templates/zshrc.zsh-template" /root/.zshrc \
    && sed -i 's/^ZSH_THEME=.*/ZSH_THEME="duellj"/' /root/.zshrc \
    && sed -i 's/^plugins=(git)$/plugins=(git python pip zsh-z)/' /root/.zshrc \
    && printf '\nexport DEFAULT_USER=root\n' >> /root/.zshrc \
    && printf '\nsource ${ZSH_CUSTOM:-$ZSH/custom}/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh\n' >> /root/.zshrc \
    && printf 'source ${ZSH_CUSTOM:-$ZSH/custom}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh\n' >> /root/.zshrc

# Install dependencies separately so source-only changes reuse this layer.
COPY pyproject.toml uv.lock .python-version ./
RUN uv sync --locked --no-dev --no-install-project

# The application writes generated solver/fuzzer files beneath /app at runtime.
COPY . .

ENTRYPOINT ["/usr/bin/zsh", "-il"]
