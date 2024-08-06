# VPC Creation:
resource "aws_vpc" "mysql_vpc" {
  cidr_block = "10.0.0.0/16"

}

# Subnet Creation:
resource "aws_subnet" "public_mysql_subnet" {
  vpc_id     = aws_vpc.mysql_vpc.id
  cidr_block = "10.0.1.0/24"

  count = 1

}

# MySQL DB Instance Creation:
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

# Internet gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main_vpc.id

}

# Public route table
resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.mysql_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

}

# Route table associations for public subnets
resource "aws_route_table_association" "public_route" {
  count = 1

  subnet_id      = aws_subnet.public_mysql_subnet.id
  route_table_id = aws_route_table.public_route_table.id
}