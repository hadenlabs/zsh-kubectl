#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function plugin-template::pkg::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_PLUGIN_TEMPLATE_PATH}"/pkg/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_PLUGIN_TEMPLATE_PATH}"/pkg/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_PLUGIN_TEMPLATE_PATH}"/pkg/linux.zsh
      ;;
    esac
    # shellcheck source=/dev/null
    source "${ZSH_PLUGIN_TEMPLATE_PATH}"/pkg/helper.zsh

    # shellcheck source=/dev/null
    source "${ZSH_PLUGIN_TEMPLATE_PATH}"/pkg/alias.zsh
}

plugin-template::pkg::main::factory
