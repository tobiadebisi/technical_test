resource "aws_security_group" "dev_security_group" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.dev_vpc.id

  dynamic "ingress" {
    for_each = var.ingress_security_group
    iterator = port
    content {
      description = "TLS from VPC"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = [var.subnet_frontend_0, var.subnet_frontend_1, var.subnet_frontend_2]
    }
  }

  dynamic "egress" {
    for_each = var.egress_security_group
    content {
      description = "TLS from VPC"
      from_port   = egress.value
      to_port     = egress.value
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  tags = {
    Name = "dev_security_group"
    Env  = "development"
  }
}
