output "elb_dns_name" {
    value = aws_elb.terraform-asg.dns_name
  
}

output "asg_name" {
    value = aws_autoscaling_group.terraform-asg-group.name
  
}