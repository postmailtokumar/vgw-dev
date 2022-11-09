variable "region" {
    description = "This is region name"
    type        =  string
}
variable "Client_ID" {
    description = "This is Client unique ID"
    type        =  string
}
variable "vpc_cidr" {
    description = "This is vpc cidr"
    type        = string
}
variable "public_subnet_az1_cidr" {
    description = "This is public subnet"
    type        = string
}
variable "private_subnet_az1_cidr" {
    description = "This is private subnet"
    type        = string
}

