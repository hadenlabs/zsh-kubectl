#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function kubectl::internal::load::completion {
    source <(kubectl completion zsh)
}

function kubectl::internal::krew::install {
    message_info "Installing KREW"
    (set -x; cd "$(mktemp -d)" &&
    OS="$(uname | tr '[:upper:]' '[:lower:]')" &&
    ARCH="$(uname -m | sed -e 's/x86_64/amd64/' -e 's/\(arm\)\(64\)\?.*/\1\2/' -e 's/aarch64$/arm64/')" &&
    KREW="krew-${OS}_${ARCH}" &&
    curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/latest/download/${KREW}.tar.gz" &&
    tar zxvf "${KREW}.tar.gz" &&
    ./"${KREW}" install krew)
    message_success "Installed KREW"
}

function kubectl::internal::krew::load {
    if core::exists kubectl; then
        [ -e "${KREW_ROOT_BIN}" ] && export PATH="${KREW_ROOT_BIN}:${PATH}"
    fi
}
