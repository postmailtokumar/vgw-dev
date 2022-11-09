variable "customer_public_ip" {
    description = "This is customer_public_ip"
    type        = string
}
variable "vpc_id" {
    description = "This is vpc_id"
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