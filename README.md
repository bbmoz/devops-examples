# DevOps Examples

> Comparison between ansible and terraform for provisioning.

## Goal

Both examples aim to provision digitalocean droplets with idempotence:
1. Use the API token to setup SSH keys.
1. Provision multiple droplets with predefined variables.
1. Display debug info about the droplets.
1. Deploy a docker image to those droplets with load balancing.
