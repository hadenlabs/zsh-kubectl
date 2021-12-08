#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

export KUBECTL_PACKAGE_NAME=kubectl
export KUBECTL_MESSAGE_BREW="Please install brew or use antibody bundle hadenlabs/zsh-brew branch:develop"
export KUBECTL_MESSAGE_PYENV="Please install brew or use antibody bundle hadenlabs/zsh-pyenv branch:develop"
export KUBECTL_MESSAGE_NOT_FOUND="this not found installed"
export KUBECTL_MESSAGE_GO_NOT_FOUND="Please install Go or use antibody bundle hadenlabs/zsh-goenv branch:develop"
export KUBE_EDITOR="vim"
if core::exists nvim; then
    export KUBE_EDITOR="nvim"
fi
export KREW_ROOT="${HOME}/.krew"
export KREW_ROOT_BIN="${KREW_ROOT}/bin"

export KREW_PLUGINS=(

    # common
    ctx
    ns

    access-matrix
    ca-cert
    cluster-group
    debug-shell
    df-pv
    fuzzy
    get-all
    images
    krew
    mtail
    neat
    net-forward
    node-admin
    node-restart
    node-shell
    oidc-login
    open-svc
    outdated
    resource-capacity
    socks5-proxy
    tree
    view-secret

)

export KUBECTL_GO_PACKAGES=(
    sigs.k8s.io/kustomize/kustomize/v3
)
