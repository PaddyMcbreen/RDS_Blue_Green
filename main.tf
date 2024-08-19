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

  pub_sub_group_ids = module.networking.pub_sub_group_ids
  pub_sub_group_name = module.networking.pub_sub_group_name

}

module "mysql-testing" {
  source = "./Modules/testing"
}
