resource "google_storage_bucket" "terraform-state" {
  name     = "website-terraform-state"
  location = "asia-northeast1"

  versioning = {
    enabled = "true"
  }
}

# terraform {
#   required_version = ">= 0.11.7"


#   backend "gcs" {
#     bucket = "website-terraform-state"
#     prefix = "gpit"
#     region = "asia-northeast1"
#   }
# }

