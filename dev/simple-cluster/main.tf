# Creating infrastructure using Terragrunt and terraform
module "clusters" {
  source = "git::https://github.com/ugogineering/test-modules.git//clusters?ref=ft-helm-cert-manager"
}
module "node-pool" {
  source = "git::https://github.com/ugogineering/test-modules.git//node-pool?ref=ft-helm-cert-manager"
  depends_on = [module.clusters]
}
module "services" {
  source = "git::https://github.com/ugogineering/test-modules.git//services?ref=ft-helm-cert-manager"
  depends_on = [module.node-pool]
}