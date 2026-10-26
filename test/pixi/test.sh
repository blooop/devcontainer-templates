#!/bin/bash
set -e

cd $(dirname "$0")
# Import test utilities
source test-utils.sh

# Verify that pixi is installed
check "pixi_installation" bash -c "pixi info"

# Verify that pixi can create a new project
check "pixi_init" bash -c "mkdir -p test-project && cd test-project && pixi init --quiet && test -f pixi.toml"

# Verify that the bash completion is set up
check "pixi_completion" bash -c "grep 'pixi completion' ~/.bashrc"

# Verify the image is the shared base: Ubuntu 26.04 without emSign ECC Root CA - G3
check "ubuntu_26_04" bash -c ". /etc/os-release && test \"\$VERSION_ID\" = 26.04"
check "no_emsign_g3" bash -c "! ls /etc/ssl/certs | grep -q emSign_ECC_Root_CA_-_G3"

# Verify that the post-create hook installed the template's environment
check "pixi_env_installed" bash -c "test -d ../.pixi/envs/default"

# Report result
reportResults
