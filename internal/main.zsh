#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function plugin-template::internal::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_PLUGIN_TEMPLATE_PATH}"/internal/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_PLUGIN_TEMPLATE_PATH}"/internal/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_PLUGIN_TEMPLATE_PATH}"/internal/linux.zsh
      ;;
    esac
    # shellcheck source=/dev/null
    source "${ZSH_PLUGIN_TEMPLATE_PATH}"/internal/helper.zsh
}

plugin-template::internal::main::factory
