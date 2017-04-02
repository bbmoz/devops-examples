# DevOps Examples

> Comparison between ansible and terraform for provisioning.

## Goal

Both examples attempt to provision digitalocean droplets with idempotence:
1. Use the API token to setup SSH keys.
1. Provision droplets with predefined variables.
1. Display debug info about the droplets.
1. Deploy a docker image.
