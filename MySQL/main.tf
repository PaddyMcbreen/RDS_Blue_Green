resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_db_instance" "mysql_db_instance" {
  allocated_storage    = 20
  db_name              = "mysqldb"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = "admin"
  manage_master_user_password = true
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true

  blue_green_update {
    enabled = true
  }

}