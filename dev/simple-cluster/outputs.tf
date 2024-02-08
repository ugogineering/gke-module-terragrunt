output "cluster_name" {
  value = module.cluster.name 
  description = "The name of the cluster being created"
}
output "node_pool_name" {
  value = module.node-pool.name
}