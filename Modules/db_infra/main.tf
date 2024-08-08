resource "aws_db_instance" "mysql_db_instance" {
  allocated_storage    = var.allocated_storage
  db_name              = var.db_name
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  db_subnet_group_name = var.db_subnet_group_name
  username             = var.username
  manage_master_user_password = true
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true

  blue_green_update {
    enabled = var.blue_green_update
  }
}
