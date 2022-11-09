#######################
# variable declaration
#######################

variable "region" {
  description = "Name of the region"
  type        = string
}
variable "Client_ID" {
  description = "This is client unique ID"
  type        = string
}
variable "vpc_cidr" {
  description = "The IPv4 CIDR block for the VPC"
  type        = string
}
variable "public_subnet_az1_cidr" {
  description = "The IPv4 CIDR block for the subnet"
  type        = string
}
variable "private_subnet_az1_cidr" {
  description = "The IPv4 CIDR block for the subnet"
  type        = string
}
variable "ingressCIDRblock" {
  description = "The IPv4 CIDR block for the ingress"
  type        = list(any)
}
variable "egressCIDRblock" {
  description = "The IPv4 CIDR block for the egress"
  type        = list(any)
}

variable "instance_type" {
  description = "instance_type to use for the instance"
  type        = string
}


variable "customer_public_ip" {
  description = "This is customer_public_ip"
  type        = string
}
variable "local_ipv4_network_cidr" {
  description = "This is local_ipv4_network_cidr"
  type        = string
}
variable "remote_ipv4_network_cidr" {
  description = "This is remote_ipv4_network_cidr"
  type        = string
}
variable "destination_cidr_block_1" {
  description = "This is destination_cidr_block_1"
  type        = string
}
variable "destination_cidr_block_2" {
  description = "This is destination_cidr_block_2"
  type        = string
}
variable "bgp_asn" {
  description = "This is bgp_asn"
  type        = number
}

variable "launch_configuration_name" {
  description = "This is launch cofiguration name"
  type        = string
}
variable "auto_scalling_group_name" {
  description = "This is auto scaling group name"
  type        = string
}
variable "image_id" {
  description = "This is image id"
  type        = string
}
variable "max_size" {
  description = "This is max size"
  type        = number
}
variable "min_size" {
  description = "This is min size"
  type        = number
}
variable "health_check_type" {
  description = "This is health check type"
  type        = string
}
variable "desired_capacity" {
  description = "This is desired capacity"
  type        = number
}




