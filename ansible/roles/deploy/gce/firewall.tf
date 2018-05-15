resource "google_compute_firewall" "website-http" {
  name    = "${var.region}-website-http"
  network = "${google_compute_network.gpit-net}"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  target_tags   = ["http"]
  source_ranges = ["0.0.0.0/0"]
}
