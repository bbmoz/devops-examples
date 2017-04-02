variable "do_token" {
  description = "digitalocean api token"
}

variable "ssh_pub_key" {
  description = "digitalocean public ssh key"
}

variable "size_id" {
  description = "size of droplet"
  default = "512mb"
}

variable "region_id" {
  description = "region of droplet"
  default = "nyc2"
}

variable "image_id" {
  description = "image of droplet"
  default = "ubuntu-16-04-x64"
}
