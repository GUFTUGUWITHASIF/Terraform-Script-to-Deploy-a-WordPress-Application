resource "aws_db_subnet_group" "aws_db_subnet_group" {
  name       = var.subnet_group_name
  subnet_ids =  var.aws_db_subnet_ids

  tags = {
    Name = "my_db_group"
}
}

resource "aws_db_instance" "rds" {
  allocated_storage    = 10
  db_name              = var.db_name
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  username             = var.username
  password             = var.password
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = var.skip_final_snapshot
  publicly_accessible = var.publicly_accessible
  db_subnet_group_name = aws_db_subnet_group.aws_db_subnet_group.name
  delete_automated_backups = var.delete_automated_backups
  identifier = var.identifier

}
