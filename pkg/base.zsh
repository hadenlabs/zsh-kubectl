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
