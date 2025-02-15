# Create Security Group
resource "aws_security_group" "mysg" {
  vpc_id = aws_vpc.one.id

  tags = {
    Name = "MY-SECURITY-GROUP"
  }

  # Allow inbound SSH (for testing/public instance access)
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}