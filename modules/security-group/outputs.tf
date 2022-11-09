output "vpc_security_group_id" {
    description = "this is vpc_security_group_id"
    value       = [aws_security_group.vpc_security_group.id]
}