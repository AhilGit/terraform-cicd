resource "aws_instance" "web" {
  ami           = "ami-02dfbd4ff395f2a1b"
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
    Name = "terraform-nginx-notest"
  }
}

resource "aws_security_group" "web_sg" {
  name = "nginx-sg-us-east"
  lifecycle {
    create_before_destroy = true
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}