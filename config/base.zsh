#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

export KUBECTL_PACKAGE_NAME=kubectl
export KUBECTL_MESSAGE_BREW="Please install brew or use antibody bundle hadenlabs/zsh-brew branch:develop"
export KUBECTL_MESSAGE_PYENV="Please install brew or use antibody bundle hadenlabs/zsh-pyenv branch:develop"
export KUBECTL_MESSAGE_NOT_FOUND="this not found installed"
export KREW_ROOT="${HOME}/.krew"
export KREW_ROOT_BIN="${KREW_ROOT}/bin"

export KREW_PLUGINS=(

    access-matrix
    ca-cert
    cluster-group
    ctx
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
    ns
    oidc-login
    open-svc
    outdated
    resource-capacity
    socks5-proxy
    tree
    view-secret

)
