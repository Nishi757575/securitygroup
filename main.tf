resource "aws_security_group" "example_sg" {
  name        = "example-security-group"
  description = "Example security group"

  vpc_id = var.newname 

  ingress {
    from_port   = var.port
    to_port     = var.to_port
    protocol    = var.mysg
    cidr_blocks = var.mycidr
  }

  ingress {
    from_port   = var.from_port
    to_port     = var.to
    protocol    = var.myprotocol
    cidr_blocks = var.mycidr_blocks
  }

  egress  {
    from_port   = var.from
    to_port     = var.ports
    protocol    = var.protocol1
    cidr_blocks = var.blocks
  }
}