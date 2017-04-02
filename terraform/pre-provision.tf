resource "digitalocean_ssh_key" "ssh" {
  name = "ssh_pub_key"
  public_key = "${var.ssh_pub_key}"
}
