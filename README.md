# Dev Container Templates

This repository contains a collection of [Development Container](https://containers.dev/) templates that provide pre-configured development environments for various technologies.

## Available Templates

### Pixi

**Pixi** is a fast, cross-platform package management tool focused on Python, C, C++, and other scientific workflows. This template provides a development container with Pixi pre-installed, making it easy to manage dependencies and environments.

#### Features
- Ubuntu 26.04 image `ghcr.io/blooop/python_template/devcontainer` with Pixi 0.83.0 and git-lfs
- Configured for Python, C, and C++ development
- Bash completion for Pixi commands
- VSCode extensions for Python and Pixi development

#### Usage

To use the Pixi template:

1. Create a new folder for your project:
```bash
mkdir my-pixi-project && cd my-pixi-project
```

2. Apply the template:
```bash
devcontainer templates apply -t ghcr.io/blooop/devcontainer-templates/pixi:latest
```

3. Open the devcontainer:
```bash
devcontainer open
```

This will start a new VSCode window with the development container running, with Pixi ready to use.

#### Template Options

The Pixi template accepts the following option (version 2.0.0 removed `pixiVersion`; the image sets the Pixi version):

- `projectName`: The name of your project (default: pixi-project)

To specify options when applying the template:

```bash
devcontainer templates apply -t ghcr.io/blooop/devcontainer-templates/pixi:latest --template-args '{"projectName": "my-awesome-project"}'
```

## Contributing

If you'd like to contribute to these templates or suggest improvements, please open an issue or pull request in this repository.
