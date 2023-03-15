#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function kubectl::install {
    kubectl::internal::kubectl::install
}

function kubectl::plugins::install {
    kubectl::internal::plugins::install
}

function kubectl::plugin::install {
    kubectl::internal::plugin::install "${@}"
}

function kubectl::after::install {
    kubectl::plugins::install
    kubectl::go::packages::install
}

function kubectl::go::packages::install {
    kubectl::go::internal::packages::install
}

function kubectl::go::package::install {
    kubectl::go::internal::package::install "${@}"
}
