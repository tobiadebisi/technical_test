resource "aws_subnet" "dev_fe_subnet_a" {
  vpc_id            = aws_vpc.dev_vpc.id
  cidr_block        = "10.100.0.0/24"
  availability_zone = "eu-west-2a"

  tags = {
    Name        = "dev_fe_subnet_a"
    Environment = "development"
    System      = "frontend"
  }
}

resource "aws_subnet" "dev_fe_subnet_b" {
  vpc_id            = aws_vpc.dev_vpc.id
  cidr_block        = "10.100.1.0/24"
  availability_zone = "eu-west-2b"

  tags = {
    Name        = "dev_fe_subnet_b"
    Environment = "development"
    System      = "frontend"
  }
}

resource "aws_subnet" "dev_fe_subnet_c" {
  vpc_id            = aws_vpc.dev_vpc.id
  cidr_block        = "10.100.2.0/24"
  availability_zone = "eu-west-2c"

  tags = {
    Name        = "dev_fe_subnet_c"
    Environment = "development"
    System      = "frontend"
  }
}

