# modules/instance/main.tf

resource "aws_instance" "this" {
  ami                         = var.ami
  instance_type               = var.instance_type
  subnet_id                   = var.subnet
  vpc_security_group_ids      = [var.security_group]
  associate_public_ip_address = var.has_public_ip
  key_name                    = var.key_name

  user_data = <<-EOF
    #!/bin/bash
    apt-get update -y
    apt-get install -y docker.io
    systemctl start docker
    systemctl enable docker
    usermod -aG docker ubuntu
  EOF

  tags = var.tags
}
