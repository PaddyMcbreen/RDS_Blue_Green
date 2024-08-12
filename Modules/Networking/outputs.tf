output "pub_sub_group_ids" {
  value = aws_db_subnet_group.pub_sub_group.subnet_ids
}

output "pub_sub_group_name" {
  value = aws_db_subnet_group.pub_sub_group.name
}