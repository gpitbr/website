resource "google_compute_firewall" "website" {
  name    = "website-gpit"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  target_tags   = ["http"]
  source_ranges = ["0.0.0.0/0"]
}
