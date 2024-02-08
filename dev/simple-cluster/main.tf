# Creating infrastructure using Terragrunt and terraform
module "cluster" {
  source = "git::https://github.com/ugogineering/test-modules.git//clusters?ref=create-node-pool-module"
}
module "node-pool" {
  source = "git::https://github.com/ugogineering/test-modules.git//node-pool?ref=create-node-pool-module"
}