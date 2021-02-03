resource "aws_security_group_rule" "vpc-traffic" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["10.0.0.0/16"]
  security_group_id = aws_security_group.terraform-sg.id
  lifecycle { create_before_destroy = true }
}

resource "aws_security_group_rule" "outbound-traffic" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.terraform-sg.id
  lifecycle { create_before_destroy = true }
}
 
resource "aws_security_group_rule" "instance-ssh" {
  type              = "ingress"
  from_port         = var.ssh-port
  to_port           = var.ssh-port
  protocol          = "TCP"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.terraform-sg.id
  lifecycle { create_before_destroy = true }
}

resource "aws_security_group_rule" "instance-http" {
  type              = "ingress"
  from_port         = var.http-port
  to_port           = var.http-port
  protocol          = "TCP"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.terraform-sg.id
  lifecycle { create_before_destroy = true }
}
 