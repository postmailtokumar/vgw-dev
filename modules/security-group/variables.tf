variable "ingressCIDRblock" {
    description = "The IPv4 CIDR block for the ingress"
    type        = list(any)
}
variable "egressCIDRblock" {
    description = "The IPv4 CIDR block for the egress"
    type        = list(any)
}
variable "vpc_id" {
    description = "this is vpc id"
    type        = string
}


