resource "aws_network_acl_rule" "dev_network_acl_rule_all_0" {
  network_acl_id = aws_network_acl.dev_network_acl.id
  rule_number    = 100
  egress         = true
  protocol       = "-1"
  rule_action    = "allow"
  cidr_block     = var.subnet_frontend_0
  from_port      = 0
  to_port        = 0
}

resource "aws_network_acl_rule" "dev_network_acl_rule_all_1" {
  network_acl_id = aws_network_acl.dev_network_acl.id
  rule_number    = 200
  egress         = true
  protocol       = "-1"
  rule_action    = "allow"
  cidr_block     = var.subnet_frontend_1
  from_port      = 0
  to_port        = 0
}

resource "aws_network_acl_rule" "dev_network_acl_rule_all_2" {
  network_acl_id = aws_network_acl.dev_network_acl.id
  rule_number    = 300
  egress         = true
  protocol       = "-1"
  rule_action    = "allow"
  cidr_block     = var.subnet_frontend_2
  from_port      = 0
  to_port        = 0
}

resource "aws_network_acl_rule" "dev_network_acl_rule_22" {
  network_acl_id = aws_network_acl.dev_network_acl.id
  rule_number    = 100
  egress         = false
  protocol       = "tcp"
  rule_action    = "allow"
  cidr_block     = "0.0.0.0/0"
  from_port      = 22
  to_port        = 22
}

resource "aws_network_acl_rule" "dev_network_acl_rule_443" {
  network_acl_id = aws_network_acl.dev_network_acl.id
  rule_number    = 200
  egress         = false
  protocol       = "tcp"
  rule_action    = "allow"
  cidr_block     = "0.0.0.0/0"
  from_port      = 443
  to_port        = 443
}