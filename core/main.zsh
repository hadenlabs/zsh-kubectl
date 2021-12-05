#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function kubectl::core::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_KUBECTL_PATH}"/core/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_KUBECTL_PATH}"/core/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_KUBECTL_PATH}"/core/linux.zsh
      ;;
    esac
}

kubectl::core::main::factory