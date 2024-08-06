resource "aws_db_instance" "mysql_db_instance" {
  allocated_storage    = 10
  db_name              = "mydb_sql"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = "mysql_user"
  password             = "mysql_test"
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
}