
locals {
    # Automatically load region-level variables
    region_vars = read_terragrunt_config(find_in_parent_folders("region.hcl"))
    
    # GCP region 
    gcp_region = local.region_vars.locals.gcp_region
}

# Generate a GCP provider block
generate "provider" {
    path = "provider.tf"
    if_exists = "overwrite_terragrunt"
    contents = <<<EOF
provider "aws" {
    region = "${local.gcp_region}"
}
EOF
}