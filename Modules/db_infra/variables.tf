variable "allocated_storage" {
  description = "The amount of storage you want your DB instance to have"
  default = 20
}

variable "db_name" {
  description = "The name of your database"
  default = "my_db"
}

variable "engine" {
  description = "The type of engine you want to use for your DB instance (MariaDB, PostgreSQL, MySQL)"
  default = "mysql"
}

variable "engine_version" {
  description = "The engine version you want to use for your DB instance (based off what engine your are using)"
  default = "8.0"
}

variable "instance_class" {
  description = "The instance class your are using for your DB instance"
  default = "db.t3.micro"
}

variable "username" {
  description = "The usernmame used for encryption/security of the DB instance"
  default = "admin"
}

variable "parameter_group_name" {
  description = "The parameter group name for my DB instance"
  default = "default.mysql8.0"
}

variable "blue_green_update" {
  description = "Enables the DB instance to use blue/green deployments (true/false)"
  default = true
}

variable "pub_sub_group_ids" {
  description = "List of subnet IDs to associate with the DB instance"
  type        = list(string)
}

variable "pub_sub_group_name" {
  description = "The name of the public subnet group"
  type        = string
}