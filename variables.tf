// Networking Module Variables:

//vpc name change
variable "name" {
  type = string
}

// Public Subnets: 
variable "public_subnet_count" {
  type = number
}

// azs config:
variable "azs_config" {
  type = string
}

// Private Subnets: 
variable "private_subnet_count" {
  type = number
}


// internet gateway option
variable "enable_internet_gateway" {
  type = bool
}

variable "publicSubnets_name" {
  type        = string
  description = "The names of your public subnets"
}

variable "privateSubnets_name" {
  type        = string
  description = "The names of your private subnets"
}

variable "ig_name" {
  type        = string
  description = "The name of your internet gateway"
}

variable "public_rt_name" {
  type        = string
  description = "The name of your public route table"
}


variable "private_rt_names" {
  type        = string
  description = "The names of your private route table"
}

variable "nat_name" {
  type        = string
  description = "The Name of your nat internet gateway"
}

variable "db_subnet_group_name" {
  description = "The name of the subnet group"
}