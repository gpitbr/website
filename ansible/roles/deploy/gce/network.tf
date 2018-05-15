resource "google_compute_network" "gpit-net" {
  name                    = "gpit-net"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "gpit-net" {
  name          = "${var.region}-net"
  ip_cidr_range = "${var.subnetwork}"
  network       = "${google_compute_network.gpit-net.self_link}"
}
