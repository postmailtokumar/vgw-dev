############################
# variable values
############################
region                    = "us-east-1"                 # region name
Client_ID                 = "VGW_Infra"                 # Client_ID
vpc_cidr                  = "10.0.0.0/16"               # vpc CIDR range
public_subnet_az1_cidr    = "10.0.0.0/24"               # public CIDR range
private_subnet_az1_cidr   = "10.0.1.0/24"               # private CIDR range
ingressCIDRblock          = ["0.0.0.0/0"]               # input value of ingressCIDRblock             
egressCIDRblock           = ["0.0.0.0/0"]               # input value of egressCIDRblock
instance_type             = "t4g.micro"                 # value of instance_type
customer_public_ip        = "34.228.153.228"            # This is customer_public_ip
local_ipv4_network_cidr   = "172.31.0.0/16"             # This is local_ipv4_network_cidr
remote_ipv4_network_cidr  = "10.0.0.0/16"               # This is remote_ipv4_network_cidr
destination_cidr_block_1  = "172.31.0.0/16"             # This is destination_cidr_block_1
destination_cidr_block_2  = "10.0.0.0/16"               # This is destination_cidr_block_2
bgp_asn                   = 65000                       # value of bgp_asn
launch_configuration_name = "test_launch_configuration" # This is launch configuration name
auto_scalling_group_name  = "test_auto_scalling_group"  # This is Auto scaling group name
image_id                  = "ami-00606d59928e33cff"     # This is image id
max_size                  = "2"                         # max size of instance
min_size                  = "1"                         # min size of instance   
health_check_type         = "EC2"                       # health check type
desired_capacity          = "1"                         # desired capacity of instance