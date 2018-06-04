resource "google_compute_instance" "website" {
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

  # network interface
  network_interface {
    subnetwork = "${google_compute_subnetwork.gpit-net.name}"

    access_config {
      // ephemeral address
    }
  }
}
