#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

export KUBECTL_PACKAGE_NAME=kubectl
export KUBECTL_MESSAGE_BREW="Please install brew or use antibody bundle hadenlabs/zsh-brew"
export KUBECTL_MESSAGE_NOT_FOUND="this not found installed"
export KUBECTL_MESSAGE_GO_NOT_FOUND="Please install Go or use antibody bundle hadenlabs/zsh-goenv"
export KUBECTL_LOCAL_PATH_BIN="/usr/local/bin"
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
    who-can

    schemahero

    # lint
    deprecations

    # sniffer
    sniff

)

export KUBECTL_GO_PACKAGES=(
    # who-can
    github.com/aquasecurity/kubectl-who-can
)

export KUBECTL_GO_INSTALL=(
    github.com/particledecay/kconf@latest
    sigs.k8s.io/kustomize/kustomize/v4@latest
    golang.stackrox.io/kube-linter/cmd/kube-linter@latest
)
