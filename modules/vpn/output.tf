output "customer_gateway_id" {
    description = "This is customer_gateway_id "
    value       = aws_customer_gateway.customer_gateway.id
  
}

output "vpn_gateway_id" {
    description = "This is vpn_gateway_id"
    value       = aws_vpn_gateway.vpn.id
  
}

output "vpn_connection_id" {
    description = "This is vpn_connection_id"
    value       = aws_vpn_connection.main.id
  
}