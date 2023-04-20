variable "region" {
  type = string
}

variable "ami" {
  type = string
}

variable "vpc_security_group_ids" {
  type = list(string)

}

variable "subnet_id" {
  type = string
}

variable "instance_type" {
  type = string
  
}

variable "key_name" {
  type = string
}

variable "tags" {
  type = map(string)
}

#subnet_group
variable "subnet_group_name" {
  
  type = string
}
variable "aws_db_subnet_ids" {
  type = list(string)
  
}
#rds

variable "allocated_storage" {
  type = number
  
}
variable "db_name" {
  type = string
  
}
variable "engine" {
  
  type = string
}
variable "engine_version" {
  type = string
}
variable "instance_class" {
  type =string
  
}
variable "username" {
  type = string
  
}
variable "password" {
  type = string
  
}
variable "skip_final_snapshot" {
  type = bool
  
}
variable "publicly_accessible" {
  type = bool
  
}
variable "delete_automated_backups" {
  type = bool
  
}
variable "identifier" {
  type = string
  
}