#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines functions kubectl for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#
#
ZSH_KUBECTL_PATH=$(dirname "${0}")

# shellcheck source=/dev/null
source "${ZSH_KUBECTL_PATH}"/config/main.zsh

# shellcheck source=/dev/null
source "${ZSH_KUBECTL_PATH}"/core/main.zsh

# shellcheck source=/dev/null
source "${ZSH_KUBECTL_PATH}"/internal/main.zsh

# shellcheck source=/dev/null
source "${ZSH_KUBECTL_PATH}"/pkg/main.zsh
