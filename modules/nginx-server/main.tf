resource "aws_instance" "web" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"

  vpc_security_group_ids = [aws_security_group.web_sg.id]

  user_data = <<-EOF
              #!/bin/bash
              apt update
              apt install -y nginx
              systemctl start nginx
              systemctl enable nginx
              EOF

  tags = {
    Name = "terraform-nginx"
  }
}

resource "aws_security_group" "web_sg" {
  name = "nginx-sg"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}