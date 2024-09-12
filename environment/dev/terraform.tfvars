project_name = "linuxtips-ecs-cluster"
region       = "us-east-1"

# SSM VPC Parameters #

ssm_vpc_id = "/linuxtips-vpc/vpc/vpc_id"

ssm_public_subnet_1a = "/linuxtips-vpc/vpc/subnet_public_1a"

ssm_public_subnet_1b = "/linuxtips-vpc/vpc/subnet_public_1b"

ssm_public_subnet_1c = "/linuxtips-vpc/vpc/subnet_public_1c"

ssm_private_subnet_1a = "/linuxtips-vpc/vpc/subnet_private_1a"

ssm_private_subnet_1b = "/linuxtips-vpc/vpc/subnet_private_1b"

ssm_private_subnet_1c = "/linuxtips-vpc/vpc/subnet_private_1c"

# Load Balancer #

load_balancer_internal = false #false para público, true para private

load_balancer_type = "application"

# ECS #

nodes_ami = "ami-09d3335e2eaf06692"

node_instance_type = "t3a.large"

node_volume_size = "50" #valores em GB

node_volume_type = "gp3"

cluster_on_demand_min_size = "2"

cluster_on_demand_max_size = "4"

cluster_on_demand_desired_size = "3"

cluster_spots_min_size = "2"

cluster_spots_max_size = "4"

cluster_spots_desired_size = "3"