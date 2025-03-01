#!/bin/bash
set -e

# Import test utilities
source test-utils.sh

# Verify that pixi is installed
check "pixi_installation" bash -c "pixi info"

# Verify that pixi can create a new project
check "pixi_init" bash -c "mkdir -p test-project && cd test-project && pixi init --quiet && test -f pixi.toml"

# Verify that the bash completion is set up
check "pixi_completion" bash -c "grep 'pixi completion' ~/.bashrc"

# Report result
reportResults
