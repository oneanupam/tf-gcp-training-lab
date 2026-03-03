/******************************************
  GA Provider credential configuration
 *****************************************/

provider "google" {
  // configure the default project and region.
  project = var.project_id
  region  = var.default_region
  zone    = var.default_zone
}

/******************************************
  Beta Provider credential configuration
 *****************************************/

provider "google-beta" {
  // configure the default project and region.
  project = var.project_id
  region  = var.default_region
  zone    = var.default_zone
}
