#!/bin/bash -e

export LC_ALL=en_US.UTF-8

if [[ -f ./mix.exs ]]; then
    iex -S mix phx.server
fi
