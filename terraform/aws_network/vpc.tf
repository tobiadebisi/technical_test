resource "aws_vpc" "dev_vpc" {
  cidr_block           = "10.100.0.0/16"
  enable_dns_hostnames = true

  tags = {
    Name = "dev_vpc"
    Env  = "development"
  }
}



