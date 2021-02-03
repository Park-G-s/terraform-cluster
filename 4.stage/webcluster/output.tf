output "elb_dns_name" {
    value = module.web_cluster.elb_dns_name
  
}

output "cluster_name" {
    value = module.web_cluster.asg_name
}