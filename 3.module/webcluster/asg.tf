resource "aws_launch_configuration" "terraform-asg" {
    image_id = "ami-09282971cf2faa4c9"
    instance_type = var.instance_type

    user_data = file("C:\\terraform\\user-data\\install_lamp.sh")
    security_groups = [module.webcluster_vpc.terraform-sg-id]
    key_name = var.key_pair
    associate_public_ip_address = true
}

resource "aws_autoscaling_group" "terraform-asg-group" {
    launch_configuration = aws_launch_configuration.terraform-asg.id
    #availability_zones = data.aws_availability_zones.all.names
    vpc_zone_identifier = [module.webcluster_vpc.terraform-subnet-a-id,
                            module.webcluster_vpc.terraform-subnet-b-id,
                            module.webcluster_vpc.terraform-subnet-c-id]

    load_balancers = [aws_elb.terraform-asg.id]
    health_check_type = "ELB"

    min_size = var.min_size
    max_size = var.max_size

    tag  {
        key     = "Name"
        #value   = "terraform-asg-example"
        value   = var.cluster_name
        propagate_at_launch = true
    }
}
#data "aws_availability_zones" "all" {}