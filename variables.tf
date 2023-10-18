variable "do_pat" {
  description = "Digital Ocean Access Token - declared in 'secrets.auto.tfvars"
  type        = string
  sensitive   = true
}

variable "ssh_key" {
  description = "Path to ssh-key - declared in 'secrets.auto.tfvars"
  type        = string
}

variable "ssh_pub" {
  description = "path to ssh-pub - declared in 'secrets.auto.tfvars"
  type        = string
}