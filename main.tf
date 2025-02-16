provider "google" {
  project = "tanooki-staging"
  region = "uscentral1" # Replace with the desired GCP region
}

resource "google_storage_bucket" "my_bucket" {
  name  = "my-unique-bucket-name" # Replace with your unique bucket name
  location = "US" # Specify the bucket's location (e.g., "US" or "EU")

  lifecycle {
     prevent_destroy = true # Optional: Prevent bucket from being accidentally destroyed
     }
}
