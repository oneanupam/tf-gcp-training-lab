provider "google" {
  project = var.project_id
  region  = var.default_region
  zone    = var.default_zone
}
