
# Pixi (pixi)

A development container with Pixi pre-installed, perfect for Python, C, C++, and other workflows that can benefit from Pixi's package management.

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| pixiVersion | The version of Pixi to install. | string | v0.41.4 |
| projectName | The name of your project. | string | pixi-project |

## Pixi Dev Container Template

This template creates a development environment with [Pixi](https://github.com/prefix-dev/pixi) pre-installed and ready to use.

### What is Pixi?

Pixi is a package management tool for projects containing Python, C, C++, R, and other languages. It creates reproducible environments for your projects, similar to conda or mamba, but with a focus on simplicity and speed.

### Using this Template

1. After creating a dev container with this template, you'll have Pixi already installed and set up.
2. To start a new Pixi project, run `pixi init` which creates a `pixi.toml` file. This file is a configuration file for Pixi, used to store your project settings and dependencies.
3. Add dependencies with `pixi add package_name`.
4. Run commands in the Pixi environment with `pixi run command`.

For more information on using Pixi, check out the [Pixi documentation](https://pixi.sh/).

### Template Options

- **pixiVersion**: The version of Pixi to install (default: v0.41.4)
- **projectName**: The name of your project. This value is used in the devcontainer configuration to set container names, labels, and related identifiers, ensuring consistency across the development environment.

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


---

_Note: This file was auto-generated from the [devcontainer-template.json](https://github.com/blooop/devcontainer-templates/blob/main/src/pixi/devcontainer-template.json).  Add additional notes to a `NOTES.md`._
