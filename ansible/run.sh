#!/bin/bash

set -e

check () {
  set -x
  ansible-playbook playbook.yml --syntax-check
}

provision () {
  set -x
  check
  ansible-playbook playbook.yml
}

setup () {
  set -x
  pip install ansible dopy
}

usage () {
cat <<EOF
  Usage:
    check|c         validate playbook
    provision|pr    provision web servers
    setup|s         install necessary tooling
    *               see usage
EOF
}

case $1 in
  check|c)        check       ;;
  provision|pr)   provision   ;;
  setup|s)        setup       ;;
  *)              usage       ;;
esac
