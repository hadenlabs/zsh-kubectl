#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function kubectl::config::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_KUBECTL_PATH}"/config/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_KUBECTL_PATH}"/config/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_KUBECTL_PATH}"/config/linux.zsh
      ;;
    esac
}

kubectl::config::main::factory