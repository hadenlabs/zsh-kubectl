#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

# Utility
alias kg='kubectl get'
alias kd='kubectl describe'
alias kdel='kubectl delete'
alias kucx='kubectl config use-context'
alias kgcx='kubectl config get-contexts'
alias kscn='kubectl config set-context --current --namespace'

# Pods
alias kgp='kubectl get pods'
alias kdp='kubectl describe pods'

# Deployments
alias kgd="kubectl get deployment"
alias kdd="kubectl describe deployment"

# Service
alias kgs="kubectl get service"
alias kds="kubectl describe service"

# Ingress
alias kgd="kubectl get ingress"
alias kdd="kubectl describe ingress"

# Apply
alias ka="kubectl apply -f"

# Logs
alias kl="kubectl logs"
alias klf="kubectl logs -f"

alias kubectl="kubecolor"
