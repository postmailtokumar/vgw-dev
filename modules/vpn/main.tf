#######################
# CUSTOMER GATEWAY
#######################

resource "aws_customer_gateway" "customer_gateway" {
  bgp_asn    = var.bgp_asn
  ip_address = var.customer_public_ip
  type       = "ipsec.1"

  tags   = {
    Name = "AWS-cgw"
  }
}

#########
#VPG
#########
resource "aws_vpn_gateway" "vpn" {
  tags   = {
    Name = "AWS-VPC-VGW"
  }
}

resource "aws_vpn_gateway_attachment" "vpn_attachment" {
  vpc_id         = var.vpc_id
  vpn_gateway_id = aws_vpn_gateway.vpn.id
}

#############
#Connection
#############

resource "aws_vpn_connection" "main" {
  vpn_gateway_id      = aws_vpn_gateway.vpn.id
  customer_gateway_id = aws_customer_gateway.customer_gateway.id
  type                = "ipsec.1"
  static_routes_only  = true
  
  
  local_ipv4_network_cidr   =  var.local_ipv4_network_cidr
  remote_ipv4_network_cidr  = var.remote_ipv4_network_cidr
}

resource "aws_vpn_connection_route" "office1" {
  destination_cidr_block = var.destination_cidr_block_1
  vpn_connection_id      = aws_vpn_connection.main.id
}

resource "aws_vpn_connection_route" "office2" {
  destination_cidr_block = var.destination_cidr_block_2
  vpn_connection_id      = aws_vpn_connection.main.id
}