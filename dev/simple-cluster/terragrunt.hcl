include "root" {
    path = find_in_parent_folders()
}
terraform {
    source = "${local.base_source_url}?ref=ft-create-cluster-module"
}

locals {
    base_source_url = "git::https://github.com/ugogineering/test-modules.git//clusters"
}
inputs = {
    project_id = "myterraformpractice"
}