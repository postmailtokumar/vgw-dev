################################################################################
# Launch configuration
################################################################################
output "launch_configuration_name" {
  description = "The name of the launch configuration"
  value       = aws_launch_configuration.launch-configuration.name
}

output "launch_configuration_arn" {
  description = "The ARN of the launch configuration"
  value       = aws_launch_configuration.launch-configuration.arn
}

################################################################################
# Autoscaling group
################################################################################
output "aws_autoscaling_group" {
  description = "The name of the autoscaling group"
  value = aws_autoscaling_group.autoscalling_group_config.name
}