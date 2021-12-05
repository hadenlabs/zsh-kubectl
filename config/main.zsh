#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function plugin-template::config::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_PLUGIN_TEMPLATE_PATH}"/config/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_PLUGIN_TEMPLATE_PATH}"/config/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_PLUGIN_TEMPLATE_PATH}"/config/linux.zsh
      ;;
    esac
}

plugin-template::config::main::factory