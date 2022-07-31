terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.0"
    }
  }
  backend "gcs" {
    bucket  = "unique-name5"
    prefix  = "cicd-demo/state"
  }
}

provider "google" {
  
  project = var.project_id
  region  = var.region
  zone    = var.zone
}
