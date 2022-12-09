FROM mcr.microsoft.com/vscode/devcontainers/base:1-ubuntu-20.04
# Erlang Solutions repository
RUN wget -q https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && \
    dpkg -i erlang-solutions_2.0_all.deb && \
    rm erlang-solutions_2.0_all.deb
# Additional packages
RUN apt-get update && \
    export DEBIAN_FRONTEND=noninteractive && \
    apt-get install -y --no-install-recommends \
        erlang \
        inotify-tools \
        postgresql-client \
        ripgrep \
        tig && \
    apt-get autoremove -y && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/*
RUN mkdir -p /opt/elixir && \
    wget -P /opt/elixir -q https://github.com/elixir-lang/elixir/releases/download/v1.15.3/elixir-otp-25.zip && \
    unzip /opt/elixir/elixir-otp-25.zip -d /opt/elixir && \
    rm /opt/elixir/elixir-otp-25.zip
ENV PATH="/opt/elixir/bin:${PATH}"
