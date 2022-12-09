#!/bin/bash -e

export LC_ALL=en_US.UTF-8

mix local.hex --force
mix local.rebar --force
mix archive.install --force hex phx_new

if [[ -f ./mix.exs ]]; then
    mix deps.get
    mix ecto.setup
fi
