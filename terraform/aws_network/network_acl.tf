resource "aws_network_acl" "dev_network_acl" {
  vpc_id = aws_vpc.dev_vpc.id
  subnet_ids = [
    "${aws_subnet.dev_fe_subnet_a.id}",
    "${aws_subnet.dev_fe_subnet_b.id}",
    "${aws_subnet.dev_fe_subnet_c.id}"
  ]

  tags = {
    Name = "dev_network_acl"
    Env  = "development"
  }
}