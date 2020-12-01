provider "google" {
  project     = var.gcp_project
  region      = var.gcp_region
}

variable "gcp_project" {
  type = string
  default = "noble-descent-230918"
}

variable "gcp_region" {
  type = string
  default = "us-west1"
}

variable "org_id" {
  type = string
}

variable "new_project_name" {
  type = string
}

variable "new_project_id" {
  type = string
}

resource "google_project" "my_project" {
  name       = var.new_project_name
  project_id = var.new_project_id
  org_id     = var.org_id
}
