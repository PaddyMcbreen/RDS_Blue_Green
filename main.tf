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

module "mySQL" {
  source = "./Modules/MySQL"

  # Module References:
  privateSubnets_name = module.networking.privateSubnets_name
  publicSubnets_name = module.networking.publicSubnets_name
  private_rt_names = module.netwokring.private_rt_names
  public_rt_name = module.networking.public_rt_name
  ig_name = module.networking.ig_name
  nat_name = module.networking.nat_name
}

module "mariaDB" {
  source = "./Modules/MariaDB"

}

module "postgreSQL" {
  source = "./Modules/PostfreSQL"

}
