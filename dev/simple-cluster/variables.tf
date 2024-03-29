variable "zone" {
  description = "Default Zone"
  type = string
  default = "us-east1-b"
}
variable "project_id" {
  description = "Project ID"
  type = string 
  default = "" #Input correct project ID value here.
}
variable "cluster_name" {
  description = "Cluster name"
  type = string
  default = "gke-module-cluster"
}