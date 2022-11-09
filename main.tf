
#############################################
# create vpc
#############################################
module "vpc" {
  source                  = "./modules/vpc"
  region                  = var.region
  Client_ID               = var.Client_ID
  vpc_cidr                = var.vpc_cidr
  public_subnet_az1_cidr  = var.public_subnet_az1_cidr
  private_subnet_az1_cidr = var.private_subnet_az1_cidr
}
#############################################
# create nat gateway
#############################################
module "nat_gateway" {
  source                    = "./modules/nat-gateway"
  public_subnet_az1_id      = module.vpc.public_subnet_az1_id
  internet_gateway          = module.vpc.internet_gateway
  vpc_id                    = module.vpc.vpc_id
  private_vgw_subnet_az1_id = module.vpc.private_vgw_subnet_az1_id
  vpn_gateway_id            = module.vpn.vpn_gateway_id
}

#############################################
# create security-group
#############################################
module "security-group" {
  source           = "./modules/security-group"
  vpc_id           = module.vpc.vpc_id
  ingressCIDRblock = var.ingressCIDRblock
  egressCIDRblock  = var.egressCIDRblock

}


#############################################
##create Autoscaling
#############################################
module "autoscalinggroup" {
  source                    = "./modules/autoscalinggroup"
  auto_scalling_group_name  = var.auto_scalling_group_name
  max_size                  = var.max_size
  min_size                  = var.min_size
  health_check_type         = var.health_check_type
  desired_capacity          = var.desired_capacity
  launch_configuration_name = var.launch_configuration_name
  image_id                  = var.image_id
  instance_type             = var.instance_type
  private_vgw_subnet_az1_id = module.vpc.private_vgw_subnet_az1_id


}
###########################
#create vpn
###########################
module "vpn" {
  source                   = "./modules/vpn"
  customer_public_ip       = var.customer_public_ip
  vpc_id                   = module.vpc.vpc_id
  local_ipv4_network_cidr  = var.local_ipv4_network_cidr
  remote_ipv4_network_cidr = var.remote_ipv4_network_cidr
  destination_cidr_block_1 = var.destination_cidr_block_1
  destination_cidr_block_2 = var.destination_cidr_block_2
  bgp_asn                  = var.bgp_asn

}