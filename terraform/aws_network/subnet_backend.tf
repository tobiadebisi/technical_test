resource "aws_subnet" "dev_be_subnet_a" {
  vpc_id            = aws_vpc.dev_vpc.id
  cidr_block        = "10.100.3.0/24"
  availability_zone = "eu-west-2a"

  tags = {
    Name        = "dev_be_subnet_a"
    Environment = "development"
    System      = "backend"
  }
}

resource "aws_subnet" "dev_be_subnet_b" {
  vpc_id            = aws_vpc.dev_vpc.id
  cidr_block        = "10.100.4.0/24"
  availability_zone = "eu-west-2b"

  tags = {
    Name        = "dev_be_subnet_b"
    Environment = "development"
    System      = "backend"
  }
}

resource "aws_subnet" "dev_be_subnet_c" {
  vpc_id            = aws_vpc.dev_vpc.id
  cidr_block        = "10.100.5.0/24"
  availability_zone = "eu-west-2c"

  tags = {
    Name        = "dev_be_subnet_c"
    Environment = "development"
    System      = "backend"
  }
}

