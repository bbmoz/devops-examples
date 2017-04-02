#!/bin/bash

set -e

check () {
  set -x
  terraform validate
  terraform plan \
    -out="plan" \
    -var-file="~/.vault/secret.tfvars"
}

provision () {
  set -x
  check
  terraform apply \
    -var-file="~/.vault/secret.tfvars"
}

setup () {
  set -x
  brew install terraform
}

usage () {
cat <<EOF
  Usage:
    check|c         create terraform plan
    provision|p     provision web servers
    setup|s         install necessary tooling
    *               see usage
EOF
}

case $1 in
  check|c)        check         ;;
  provision|p)    provision     ;;
  setup|s)        setup         ;;
  *)              usage         ;;
esac
