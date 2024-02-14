# Creating infrastructure using Terragrunt and terraform
module "cluster" {
  source = "git::https://github.com/ugogineering/test-modules.git//clusters?ref=main"
  project_id = var.project_id
  cluster_name = var.cluster_name
}
module "node-pool" {
  source = "git::https://github.com/ugogineering/test-modules.git//node-pool?ref=main"
  project_id = var.project_id
  cluster = module.cluster.name 
  depends_on = [module.cluster]
}