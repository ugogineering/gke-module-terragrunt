# Creating infrastructure using Terragrunt and terraform
module "cluster" {
  source = "git::https://github.com/ugogineering/test-modules.git//clusters?ref=create-node-pool-module"
  project_id = var.project_id
  cluster_name = var.cluster_name
}
module "node-pool" {
  source = "git::https://github.com/ugogineering/test-modules.git//node-pool?ref=create-node-pool-module"
  project_id = var.project_id
  cluster = module.cluster.name 
}