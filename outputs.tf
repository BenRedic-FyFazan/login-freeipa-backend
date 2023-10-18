output "persistent_volumes" {
  value = {
    "Persistent volumes:" = {
        "${digitalocean_volume.master_backup.name}" = "${digitalocean_volume.master_backup.size}Gb"
    }
  }
}

output "reserved_ips" {
    value = {
        "Reserved ips:" = {
            "ipa" = "${digitalocean_reserved_ip.ipa.ip_address}"
            "ipa_replica_1" = "${digitalocean_reserved_ip.ipa_replica_1.ip_address}"
        } 
    }
}