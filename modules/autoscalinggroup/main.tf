################################################################################
# Launch configuration
################################################################################
resource"aws_launch_configuration" "launch-configuration" {
  name = var.launch_configuration_name
  image_id = var.image_id
  instance_type = var.instance_type
}
################################################################################
# Autoscaling group
################################################################################

resource "aws_autoscaling_group" "autoscalling_group_config" {
  name = var.auto_scalling_group_name
  max_size = var.max_size
  min_size = var.min_size
  health_check_type = var.health_check_type
  desired_capacity = var.desired_capacity
  vpc_zone_identifier = [var.private_vgw_subnet_az1_id]
  launch_configuration = aws_launch_configuration.launch-configuration.name
  tag {
    key="Name"
    value = "VGW-instance"
    propagate_at_launch = true
  }
 

}