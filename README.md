# Phoenix Dev Container

This file will be overwritten by `phx.new`.

Create a new Phoenix project:

```bash
mix phx.new . --module HelloPhoenix --app hello_phoenix
```

Add `.elixir_ls` to `.gitignore`:

```bash
printf "# ElixirLS directory.\n.elixir_ls\n" >>.gitignore
```

Stage all files and commit:

```bash
git add -A
git commit -m "HelloPhoenix"
```
