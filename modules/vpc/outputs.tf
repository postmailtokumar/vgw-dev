output "region" {
    description = "This is region"
    value       = var.region
}

output "Client_ID" {
    description = "This is project name"
    value       = var.Client_ID
}

output "vpc_id" {
    description = "This is vpc id"
    value       = aws_vpc.vpc.id
}

output "public_subnet_az1_id" {
    description = "This is public subnet"
    value       = aws_subnet.public_subnet_az1.id
}

output "private_vgw_subnet_az1_id" {
    description = "This is private subnet"
    value       = aws_subnet.private_vgw_subnet_az1.id
}

output "internet_gateway" {
    description = "This is internet gateway"
    value       = aws_internet_gateway.internet_gateway.id
}


