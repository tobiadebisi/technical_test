/*
resource "aws_default_network_acl" "dev_default_network_acl" {
  default_network_acl_id = aws_vpc.dev_vpc.default_network_acl_id
  subnet_ids = [
    "${aws_subnet.dev_fe_subnet_a.id}",
    "${aws_subnet.dev_fe_subnet_b.id}",
    "${aws_subnet.dev_fe_subnet_c.id}"
  ]

  tags = {
    Name = "dev_default_network_acl"
    Env  = "development"
  }
}
*/