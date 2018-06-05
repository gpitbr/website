resource "google_compute_instance" "website" {
  name         = "${var.name}"
  machine_type = "${var.machine_type}"
  zone         = "${var.zone}"
  tags         = "${var.tags}"

  boot_disk {
    initialize_params {
      image = "${var.image}"
    }
  }

  metadata {
    sshKeys = "${var.gce_ssh_user}:${file(var.gce_ssh_pub_key_file)}"
  }

  network_interface {
    network = "default"

    access_config {
      nat_ip = "${google_compute_address.ipexterno.address}"
    }
  }
}
