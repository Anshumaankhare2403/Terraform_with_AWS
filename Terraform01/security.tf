resource "aws_security_group" "web" {
  name   = "terraform-web-sg"
  vpc_id = "vpc-0cc9f2b1a547f23fd"

  ingress {
    description = "SSH from my computer"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["27.4.60.50/32"]
  }

  ingress {
    description = "HTTP web traffic"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}