######################################### Output for EC2 #####################################################

output "instance_ip_addr" {
  value = aws_instance.ec2.private_ip
}
output "instance_public_ip_address" {
  value = aws_eip.eip_associate.public_ip
}
output "instance_id" {
  value = aws_instance.ec2.id
}

########################################## Output for RDS ####################################################

output "rds_db_instance_id" {
  description = "The RDS DB Instance id"
  value       = aws_db_instance.dbinstance.id
}
#output "rds_read_replica_instance_id" {
#  description = "The Read Replica DB Instance id"
#  value       = aws_db_instance.read_replica.id
#}

######################################### Output for Redis ###################################################

output "configuration_endpoint_address" {
  description = "Endpoint address for Redis"
  value = aws_elasticache_replication_group.aws_redis.configuration_endpoint_address
}
