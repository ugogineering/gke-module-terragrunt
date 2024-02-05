terraform {
    source = "${local.base_source_url}?ref=v1.0.0"
}

locals {
    base_source_url = "git::git@github.com:ugogineering/gke-module.git//gke-module"
}

inputs {
    project_id = "myterraformpractice"
}