#################################################### Variables for VPC ############################################################

variable "vpc_cidr"{

}
variable "private_subnet_cidr"{

}
variable "public_subnet_cidr"{

}
variable "igw_name" {

}
variable "vpc_name" {

}

###################################################### Variables for EC2  ##########################################################

variable "provide_ami" {

}
variable "instance_type" {

}
#variable "subnet_id" {

#}
variable "kms_key_id_ec2" {

}
#variable "security_group_ids" {

#}
variable "name" {

}

##################################################### Variables for RDS #############################################################

variable "identifier" {

}
variable "db_subnet_group_name" {

}
#variable "subnet_ids_for_subnet_group" {

#}
#variable "read_replica_identifier" {

#}
variable "allocated_storage" {

}
variable "max_allocated_storage" {

}
#variable "read_replica_max_allocated_storage" {

#}
variable "storage_type" {

}
#variable "read_replica_storage_type" {

#}
variable "engine" {

}
variable "engine_version" {

}
variable "instance_class" {

}
#variable "read_replica_instance_class" {

#}
variable "rds_db_name" {

}
variable "username" {

}
variable "password" {

}
variable "parameter_group_name" {

}
variable "multi_az" {

}
#variable "read_replica_multi_az" {

#}
#variable "final_snapshot_identifier" {

#}
variable "skip_final_snapshot" {

}
#variable "copy_tags_to_snapshot" {

#}
variable "availability_zone" {

}
variable "publicly_accessible" {

}
#variable "vpc_security_group_ids" {

#}
#variable "read_replica_vpc_security_group_ids" {

#}
#variable "backup_retention_period" {

#}
variable "kms_key_id_rds" {

}
#variable "read_replica_kms_key_id" {

#}
variable "monitoring_role_arn" {

}
variable "enabled_cloudwatch_logs_exports" {

}
variable "env" {

}

############################################### Variables for Redis ##########################################################

variable "prefix" {

}
