
resource "aws_instance" "dev_web" {
  ami           = "ami-00f6a0c18edb19300"
  instance_type = "t2.nano"
  #subnet_id                   = aws_subnet.dev_fe_subnet_a.id
  associate_public_ip_address = true
  #security_groups             = ["sg-09985b0d18e2b440d"]
  source_dest_check = true
  count             = var.environ_value == true ? 2 : 0
  key_name          = aws_key_pair.key_pair.key_name

  tags = {
    Name        = "${var.dev_devices_display_name[count.index]}-${count.index}"
    Environment = "development"
    Ownership   = "DevOps"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt update -y",
      "sudo apt install -y nginx",
      "sudo systemctl start nginx"
    ]

    connection {
      type = "ssh"
      host = self.public_ip
      user = "ubuntu"
      private_key = file("${var.private_key}")
    }
  }
}

resource "aws_instance" "staging_web" {
  ami           = "ami-00f6a0c18edb19300"
  instance_type = "t2.nano"
  #subnet_id                   = aws_subnet.dev_fe_subnet_a.id
  associate_public_ip_address = true
  #security_groups             = ["sg-09985b0d18e2b440d"]
  source_dest_check = true
  count             = var.environ_value == false ? 2 : 0
  key_name          = aws_key_pair.key_pair.key_name

  tags = {
    Name        = "${var.staging_devices_display_name[count.index]}-${count.index}"
    Environment = "staging"
    Ownership   = "DevOps"
  }

  provisioner "local-exec" {
    command = "echo ${aws_instance.staging_web[1].private_ip} >> private_ips.txt"
  }
}

output "dev_web_arn" {
  value = aws_instance.dev_web[*].public_ip
}