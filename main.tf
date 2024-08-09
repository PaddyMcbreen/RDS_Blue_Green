module "networking" {
  source = "./Modules/Networking"

  // VPC Settings:
  name       = var.name
  azs_config = var.azs_config

  // Public Subnet Settings:
  publicSubnets_name  = var.publicSubnets_name
  public_subnet_count = var.public_subnet_count

  // Private Subnet Settings:
  privateSubnets_name  = var.privateSubnets_name
  private_subnet_count = var.private_subnet_count

  // DBSubnet Group Name
  # db_subnet_group_name = var.db_subnet_group_name

  // Internet Gateway Settings:
  enable_internet_gateway = var.enable_internet_gateway
  ig_name                 = var.ig_name

  // Nat Internet Gateway Settings:
  nat_name = var.nat_name

  // Public Route Table Settings:
  public_rt_name = var.public_rt_name

  // Priavte Route Table Settings:
  private_rt_names = var.private_rt_names
}

module "db_infra" {
  source = "./Modules/db_infra"

  db_subnet_group_name = module.networking.db_subnet_group_name
  # allocated_storage = var.allocated_storage
  # db_name = var.db_name
  # engine = var.engine 
  # engine_version = var.engine_version
  # instance_class = var.instance_class
  # username = var.username
  # parameter_group_name = var.parameter_group_name
  # blue_green_update = var.blue_green_update
}
