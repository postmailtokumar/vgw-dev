############################################
# Security group creation
############################################

resource "aws_security_group" "vpc_security_group" {
  vpc_id        = var.vpc_id
  name          = "vpc security group"
  ingress {
    cidr_blocks = var.ingressCIDRblock  
    from_port   = 22
    to_port     = 22
    protocol    = "tcp" 
  } 

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
  }

  
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.egressCIDRblock
  }

tags    = {
   Name = "vpc security group"
  
}
}