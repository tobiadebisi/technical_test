resource "aws_route_table_association" "dev_fe_subnet_a" {
  subnet_id      = aws_subnet.dev_fe_subnet_a.id
  route_table_id = aws_route_table.dev_route_table.id
}

resource "aws_route_table_association" "dev_fe_subnet_b" {
  subnet_id      = aws_subnet.dev_fe_subnet_b.id
  route_table_id = aws_route_table.dev_route_table.id
}

resource "aws_route_table_association" "dev_fe_subnet_c" {
  subnet_id      = aws_subnet.dev_fe_subnet_c.id
  route_table_id = aws_route_table.dev_route_table.id
}