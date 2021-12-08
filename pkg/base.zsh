#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function kubectl::install {
    kubectl::internal::kubectl::install
}

function kubectl::plugins::all::install {
    kubectl::internal::plugins::install
}

function kubectl::plugin::install {
    kubectl::internal::plugin::install "${@}"
}

function kubectl::post_install {
    message_info "Post Install ${KUBECTL_PACKAGE_NAME}"
    message_success "Success Install ${KUBECTL_PACKAGE_NAME}"
}

function kubectl::go:packages::install {
    kubectl::go::internal::packages::install
}

function kubectl::go::package::install {
    kubectl::go::internal::package::install "${@}"
}
