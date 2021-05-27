resource "aws_key_pair" "key_pair" {
  key_name   = "${var.environ_name}key_pair"
  public_key = file("${var.kay_pair}")
}