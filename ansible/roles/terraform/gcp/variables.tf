variable "google_project_id" {
  description = "The ID of the Google Cloud project"
  default     = "gpit-198019"
}

variable "account_file" {
  description = "Path to the JSON file used to describe your account credentials"
  default     = "/home/fabio/.gce/gpit.json"
}

variable "region" {
  description = "Region location"
  default     = "us-east1"
}

variable "zone" {
  description = "Zone location"
  default     = "us-east1-b"
}

variable "tags" {
  description = "Tags desfaults"
  default     = ["website"]
}

variable "image" {
  description = "Image default"
  default     = "centos-7-v20160803"
}

variable "machine_type" {
  description = "Michine type configuration"
  default     = "f1-micro"
}

variable "gce_ssh_user" {
  description = "User for ssh-key authentication"
  default     = "fabio"
}

variable "gce_ssh_pub_key_file" {
  description = "Path to file containing public key"
  default     = "/home/fabio/.ssh/google_compute_engine.pub"
}

variable "subnetwork" {
  description = "Subnetwork gpit"
  default     = "10.20.30.0/24"
}
