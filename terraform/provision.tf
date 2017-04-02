resource "digitalocean_droplet" "droplet" {
  name = "DROPLET_ONE"
  size = "${var.size_id}"
  region = "${var.region_id}"
  image = "${var.image_id}"
  ssh_keys = ["${digitalocean_ssh_key.ssh.fingerprint}"]
}

output "debug" {
  value = [
    "${digitalocean_droplet.droplet.name}",
    "ID is ${digitalocean_droplet.droplet.id}",
    "IP is ${digitalocean_droplet.droplet.ipv4_address}"
  ]
}
