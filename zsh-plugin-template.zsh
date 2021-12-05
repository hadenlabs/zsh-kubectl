#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines functions plugin-template for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#
#
ZSH_PLUGIN_TEMPLATE_PATH=$(dirname "${0}")

# shellcheck source=/dev/null
source "${ZSH_PLUGIN_TEMPLATE_PATH}"/config/main.zsh

# shellcheck source=/dev/null
source "${ZSH_PLUGIN_TEMPLATE_PATH}"/core/main.zsh

# shellcheck source=/dev/null
source "${ZSH_PLUGIN_TEMPLATE_PATH}"/internal/main.zsh

# shellcheck source=/dev/null
source "${ZSH_PLUGIN_TEMPLATE_PATH}"/pkg/main.zsh
