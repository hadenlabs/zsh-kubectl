#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function kubectl::internal::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_KUBECTL_PATH}"/internal/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_KUBECTL_PATH}"/internal/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_KUBECTL_PATH}"/internal/linux.zsh
      ;;
    esac
    # shellcheck source=/dev/null
    source "${ZSH_KUBECTL_PATH}"/internal/helper.zsh
}

kubectl::internal::main::factory

if ! core::exists kubectl; then core::install kubectl; fi

kubectl::internal::load::completion
