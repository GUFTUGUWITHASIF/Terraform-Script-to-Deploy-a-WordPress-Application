region = "us-east-1"
ami = "ami-0aa2b7722dc1b5612"
vpc_security_group_ids = [ "sg-0651fe758d499b87e" ]
subnet_id = "subnet-0be20ef63b79ebb33"
key_name = "key"
tags = {
  "Name" = "Asif"
  "managed_by" = "terraform"
}
instance_type = "t2.micro"

#subnet_group
aws_db_subnet_ids = [ "subnet-0be20ef63b79ebb33", "subnet-09cb7c2b1419256b9" ]
subnet_group_name = "wordpress-subnet"

allocated_storage = 10
db_name = "wordpress"
engine = "mysql"
engine_version = "5.7"
instance_class = "db.t2.micro"
username = "root"
password = "caroline1998"
skip_final_snapshot = true
publicly_accessible = false
delete_automated_backups = true
identifier = "wordpress"
