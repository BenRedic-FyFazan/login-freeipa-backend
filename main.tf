provider "digitalocean" {
  token = var.do_pat
}

terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

resource "digitalocean_volume" "master_backup" {
    name = "master-backup"
    region = "ams3"
    size = 10
    initial_filesystem_type = "ext4"
    description = "Master volume for backup-persistence"

    lifecycle {
      prevent_destroy = false
    }
}

resource "digitalocean_reserved_ip" "ipa" {
  region = "ams3"

  lifecycle {
    prevent_destroy = false
  }
}

resource "digitalocean_reserved_ip" "ipa_replica_1" {
  region = "ams3"

  lifecycle {
    prevent_destroy = false
  }
}

resource "digitalocean_domain" "default" {
    name = "horve.eu"
}