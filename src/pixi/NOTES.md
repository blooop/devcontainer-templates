## Pixi Dev Container Template

This template creates a development environment with [Pixi](https://github.com/prefix-dev/pixi) pre-installed and ready to use.

### What is Pixi?

Pixi is a package management tool for projects containing Python, C, C++, R, and other languages. It creates reproducible environments for your projects, similar to conda or mamba, but with a focus on simplicity and speed.

### Using this Template

1. After creating a dev container with this template, you'll have Pixi already installed and set up. The container uses the `ghcr.io/blooop/python_template/devcontainer` image (Ubuntu 26.04, Pixi 0.83.0). The Pixi version comes from that image.
2. To start a new Pixi project, run `pixi init` which creates a `pixi.toml` file. This file is a configuration file for Pixi, used to store your project settings and dependencies.
3. Add dependencies with `pixi add package_name`.
4. Run commands in the Pixi environment with `pixi run command`.

For more information on using Pixi, check out the [Pixi documentation](https://pixi.sh/).

### Template Options

- **projectName**: The name of your project. This value is used in the devcontainer configuration to set container names, labels, and related identifiers, ensuring consistency across the development environment.

### What runs when the container is created

- If `pixi.lock` exists, `pixi install --frozen` installs it and does not change it.
- If only `pixi.toml` exists, `pixi install` installs it and writes `pixi.lock`.
- If neither exists, nothing is installed.

The image bind-mounts `~/.claude` from the host, so `initializeCommand` creates that directory first.

### Upgrading from 1.x

Version 2.0.0 removes the `pixiVersion` option. Remove `pixiVersion` from the `--template-args` of your `devcontainer templates apply` command.

### Common Tasks

Create a new Pixi project:
```bash
pixi init
```

Add a dependency:
```bash
pixi add numpy
```

Add a development-only dependency:
```bash
pixi add --dev pytest
```

Run a command in the Pixi environment:
```bash
pixi run python my_script.py
```
