variable "launch_configuration_name" {
    description = "This is launch configuration name"
    type = string
}
variable "auto_scalling_group_name" {
    description = "This is auto scaling group name"
    type = string
}
variable "image_id" {
    description = "This is image id"
    type = string
}
variable "instance_type" {
    description = "This is instance type"
    type = string
}
variable  "max_size" {
    description = "This is max size"
    type = number
}
variable  "min_size" {
    description = "This is min size"
    type = number
}
variable  "health_check_type" {
    description = "This is health check"
    type = string
}
variable  "desired_capacity" {
    description = "This is desired capacity"
    type = number
}
variable "private_vgw_subnet_az1_id"{
    description = "This is private vgw subnet"
    type = string
}







