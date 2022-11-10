terraform {
    required_providers {
        google-local = {
            source  = "terraform.local/local/google"
            version = "3.90.1"
        }
    }
}

provider "google" {
    project = local.project
}

provider "google-local" {
    project = local.project
}

resource "google_storage_bucket" "example_bucket" {
  name          = "${local.project}-example-bucket"
  location      = "EU"
  force_destroy = true
}

resource "google_compute_backend_bucket" "example_backend" {
    provider = google-local

    name        = "${local.project}-example-backend-bucket"
    bucket_name = google_storage_bucket.example_bucket.name

    enable_cdn = true
    cdn_policy {
        cache_mode        = "USE_ORIGIN_HEADERS"
        negative_caching  = true
        serve_while_stale = 86400
    }
}