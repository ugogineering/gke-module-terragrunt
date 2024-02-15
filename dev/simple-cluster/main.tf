# Creating infrastructure using Terragrunt and terraform
module "clusters" {
  source = "git::https://github.com/ugogineering/test-modules.git//clusters?ref=ft-helm-charts"
}
module "node-pool" {
  source = "git::https://github.com/ugogineering/test-modules.git//node-pool?ref=ft-helm-charts"
  depends_on = [module.clusters]
}
module "helm-releases" {
  source = "git::https://github.com/ugogineering/test-modules.git//helm-releases?ref=ft-helm-cert-manager"
}