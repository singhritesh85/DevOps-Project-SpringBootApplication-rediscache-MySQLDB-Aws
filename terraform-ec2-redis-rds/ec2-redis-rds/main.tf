module "ec2_springboot" {

###################################################### VPC #########################################################

  vpc_cidr = var.vpc_cidr
  private_subnet_cidr = var.private_subnet_cidr
  public_subnet_cidr = var.public_subnet_cidr
  igw_name = var.igw_name
  vpc_name = var.vpc_name

###################################################### EC2 ##########################################################

  source = "../module"
  count = var.provide_num
  provide_ami = var.provide_ami[var.region]
  instance_type = var.instance_type[0]
#  security_group_ids = var.security_group_ids
#  subnet_id = var.subnet_id
  kms_key_id_ec2 = var.kms_key_id_ec2
  name="${var.name}-${count.index + 1}"

  env = var.env[0]

###################################################### RDS ##########################################################

  identifier = var.identifier                            ###  identifier = "${var.identifier}-${count.index + 1}
  db_subnet_group_name = var.db_subnet_group_name
#  subnet_ids_for_subnet_group = var.subnet_ids_for_subnet_group
#  read_replica_identifier = var.read_replica_identifier  ###  read_replica_identifier = "${var.read_replica_identifier}-${count.index + 1}
  allocated_storage = var.allocated_storage
  max_allocated_storage = var.max_allocated_storage
#  read_replica_max_allocated_storage = var.read_replica_max_allocated_storage
  storage_type = var.storage_type[0]
#  read_replica_storage_type = var.read_replica_storage_type
  engine = var.engine[0]             ### var.engine[3]  use for postgresql
  engine_version = var.engine_version[0]       ### var.engine_version[11]  use for postgresql
  instance_class = var.instance_class[0]
#  read_replica_instance_class = var.read_replica_instance_class
  rds_db_name = var.rds_db_name
  username = var.username
  password = var.password
  parameter_group_name = var.parameter_group_name[0]
  multi_az = var.multi_az[0]
#  read_replica_multi_az = var.read_replica_multi_az
#  final_snapshot_identifier = var.final_snapshot_identifier
  skip_final_snapshot = var.skip_final_snapshot[0]
#  copy_tags_to_snapshot = var.copy_tags_to_snapshot
  availability_zone = var.availability_zone[0]  ### It should not be enabled for Multi-AZ option, If it is not enabled for Single DB Instance then it's value will be taken randomly.
  publicly_accessible = var.publicly_accessible[1]
#  vpc_security_group_ids = var.vpc_security_group_ids
#  read_replica_vpc_security_group_ids = var.read_replica_vpc_security_group_ids
#  backup_retention_period = var.backup_retention_period
  kms_key_id_rds = var.kms_key_id_rds
#  read_replica_kms_key_id = var.read_replica_kms_key_id
  monitoring_role_arn = var.monitoring_role_arn
  enabled_cloudwatch_logs_exports = var.enabled_cloudwatch_logs_exports

############################################################### Redis ##################################################################

  prefix = var.prefix

}
