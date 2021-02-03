resource "aws_instance" "amazonlinux2-ssh-server" {
    ami = "ami-09282971cf2faa4c9"
    instance_type = "t2.micro"

    user_data = file("C:\\terraform\\user-data\\install_lamp.sh")
    subnet_id = module.webserver_vpc.terraform-subnet-c-id
    vpc_security_group_ids = [module.webserver_vpc.terraform-sg-id]
    key_name = var.key_pair
    count = 1
    tags = {
        Name = "example-instance"
    }
    associate_public_ip_address = true
}
