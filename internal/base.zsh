#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function kubectl::internal::load::completion {
    source <(kubectl completion zsh)
}
