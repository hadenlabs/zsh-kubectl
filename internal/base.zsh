#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function kubectl::internal::load::completion {
    # shellcheck source=/dev/null
    source <(kubectl completion zsh)
    # make completion work with kubecolor
    command -v kubecolor >/dev/null 2>&1 && compdef kubecolor=kubectl
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

function kubectl::internal::kubecolor::install {
    if ! core::exists kubecolor; then
        brew install hidetatz/tap/kubecolor
    fi
}

function kubectl::internal::krew::load {
    if core::exists kubectl; then
        [ -e "${KREW_ROOT_BIN}" ] && export PATH="${KREW_ROOT_BIN}:${PATH}"
    fi
}

function kubectl::internal::crossplane::install {
    message_info "Installing crossplane"
    curl -sL https://raw.githubusercontent.com/crossplane/crossplane/master/install.sh | sh
    mv crossplane "${KUBECTL_LOCAL_PATH_BIN}/"
    message_success "Installed crossplane"
}

function kubectl::internal::plugin::install {
    if ! core::exists kubectl-krew; then
        message_warning "it's necessary have krew"
        return
    fi
    message_info "Installing krew plugin ${1}"
    kubectl krew install "${1}"
    message_success "Installed ${1} krew plugin"
}

function kubectl::internal::plugins::install {
    if ! core::exists kubectl-krew; then
        message_warning "it's necessary have krew"
        return
    fi

    if ! core::exists kubectl; then
        message_warning "it's necessary have kubectl"
        return
    fi

    message_info "Installing required krew plugins"

    for plugin in "${KREW_PLUGINS[@]}"; do
        kubectl::internal::plugin::install "${plugin}"
    done
    message_success "Installed required krew plugins"
}

function kubectl::go::internal::packages::install {
    if ! core::exists go; then
        message_warning "${KUBECTL_MESSAGE_GO_NOT_FOUND}"
        return
    fi

    for package in "${KUBECTL_GO_PACKAGES[@]}"; do
        goenv::internal::package::get "${package}"
    done

    for package in "${KUBECTL_GO_INSTALL[@]}"; do
        goenv::internal::package::install "${package}"
    done
}