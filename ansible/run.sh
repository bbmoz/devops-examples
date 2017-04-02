#!/bin/bash

set -e

ping () {
  set -x
  ansible web_servers -i hosts.ini -m ping
}

provision () {
  set -x
  ansible-playbook playbook.yml --syntax-check
  ansible-playbook playbook.yml
}

setup () {
  set -x
  pip install ansible dopy
}

usage () {
cat <<EOF
  Usage:
    ping|pi         ping web servers
    provision|pr    provision web servers
    setup|s         install necessary tooling
    *               see usage
EOF
}

case $1 in
  ping|pi)        ping        ;;
  provision|pr)   provision   ;;
  setup|s)        setup       ;;
  *)              usage       ;;
esac
