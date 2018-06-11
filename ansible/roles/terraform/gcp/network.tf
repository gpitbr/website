resource "google_compute_address" "ipexterno" {
  name         = "${var.name}"
  region       = "${var.region}"
  address_type = "EXTERNAL"
}
