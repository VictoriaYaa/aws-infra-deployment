resource "aws_security_group" "security-group-public" {
  name        = "security-group-public"
  description = "Allow security-group-public inbound traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
   from_port   = 0
   to_port     = 0
   protocol    = -1
   self        = "false"
   cidr_blocks = ["0.0.0.0/0"]
   description = "any"
 }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "security-group-public"
    cost_type   = "fixed"
  }
}