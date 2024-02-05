include "root" {
    path = find_in_parent_folders()
}

terraform {
    source = "${local.base_source_url}?ref=main"
}

locals {
    base_source_url = "git::https://github.com/ugogineering/gke-module.git//"
}

inputs = {
    project_id = "myterraformpractice"
}