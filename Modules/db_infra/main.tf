resource "aws_db_instance" "mysql_db_instance" {
  allocated_storage    = var.allocated_storage
  db_name              = var.db_name
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  db_subnet_group_name = var.pub_sub_group_name
  username             = var.username
  password             = "password" # var.password
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true

  blue_green_update {
    # enabled = var.blue_green_update
    enabled = true
    }
}
