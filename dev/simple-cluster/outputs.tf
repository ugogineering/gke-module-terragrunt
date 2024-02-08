output "cluster_name" {
  value = module.cluster.cluster_name 
  description = "The name of the cluster being created"
}
output "node_pool_name" {
  value = module.node-pool.node_pool_name
}