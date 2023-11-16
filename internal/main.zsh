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
kubectl::internal::krew::load

if ! core::exists kubectl; then core::install kubectl; fi
if ! core::exists helm; then core::install helm; fi
if ! core::exists kubectl-krew; then kubectl::internal::krew::install; fi
if ! core::exists kubectl-ctx; then core::install kubectx; fi
if ! core::exists crossplane; then kubectl::internal::crossplane::install; fi
if ! core::exists kubecolor; then kubectl::internal::kubecolor::install; fi

kubectl::internal::load::completion