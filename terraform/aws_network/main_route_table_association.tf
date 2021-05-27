resource "aws_main_route_table_association" "dev_main_route_table_association" {
  vpc_id         = aws_vpc.dev_vpc.id
  route_table_id = aws_route_table.dev_route_table.id
}