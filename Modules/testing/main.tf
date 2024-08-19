# resource "aws_db_instance" "mysql_instance" {
#   identifier           = "mysql-id"
#   engine               = "mysql"
#   engine_version       = "8.0.33"
#   instance_class       = "db.t3.micro"
#   allocated_storage    = 20
#   max_allocated_storage = 25

#   db_name              = "blueGreenExampleMysql"
#   username             = "blue_green_example_mysql"
#   password             = "UberSecretPassword"
#   port                 = 3306

#   family               = "mysql8.0" # DB parameter group
#   major_engine_version = "8.0"      # DB option group

#   multi_az               = true
#   db_subnet_group_name   = module.vpc.database_subnet_group
#   vpc_security_group_ids = [module.mysql_security_group.security_group_id]

#   maintenance_window              = "Mon:00:00-Mon:03:00"
#   backup_window                   = "03:00-06:00"
#   enabled_cloudwatch_logs_exports = ["general"]
#   create_cloudwatch_log_group     = true

#   skip_final_snapshot = true
#   deletion_protection = false

#   blue_green_update {
#     enabled = true
#   }

#   # Optionally add a parameter group
#   parameter_group_name = "your-parameter-group-name" 

#   # Optionally add an option group
#   option_group_name = "your-option-group-name"
# }
