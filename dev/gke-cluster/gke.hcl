terraform {
    source = "${local.base_source_url}
}

locals {
    base_source_url = "git::git@github.com:ugogineering/gke-module.git/gke-module"
}

inputs {
    project_id = "myterraformpractice"
}