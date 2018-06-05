provider "google" {
  credentials = "${file("~/.gcp/gpit.json")}"
  project     = "${var.google_project_id}"
  region      = "${var.region}"
}
