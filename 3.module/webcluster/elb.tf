resource "aws_elb" "terraform-asg" {
  name = "${var.cluster_name}-elb"
  #availability_zones = data.aws_availability_zones.all.names
  subnets         = [module.webcluster_vpc.terraform-subnet-a-id,
                      module.webcluster_vpc.terraform-subnet-b-id,
                      module.webcluster_vpc.terraform-subnet-c-id]
  ##security_groups = [aws_security_group.terraform-elb.id]
  security_groups = [module.webcluster_vpc.terraform-sg-id]
  listener {
    lb_port = 80
    lb_protocol = "http"
    instance_port = var.server_port
    instance_protocol = "http"
  }
  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    interval            = 30
    target              = "HTTP:${var.server_port}/"
  }
}


