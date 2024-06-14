resource "aws_security_group" "redis_sg" {
 name        = "redis-securitygroup"
 description = "Security Group for Redis"
 vpc_id      = aws_vpc.test_vpc.id

ingress {
   description = "Allow Redis Port"
   from_port   = 6379
   to_port     = 6379
   protocol    = "tcp"
   cidr_blocks = ["10.10.0.0/16"]
 }

egress {
   from_port   = 0
   to_port     = 0
   protocol    = "-1"
   cidr_blocks = ["0.0.0.0/0"]
 }
}

resource "aws_elasticache_subnet_group" "redis_subnetgroup" {
  name       = "${var.prefix}-cache-subnetgroup"
  subnet_ids = aws_subnet.public_subnet.*.id
}

data "aws_availability_zones" "available" {
  state = "available"
}

# Redis Cluster Mode Enabled
resource "aws_elasticache_replication_group" "aws_redis" {
  replication_group_id       = "springboot-redis-cluster"
  description                = "Redis Cluster for Springboot Application"
  engine                     = "redis"
  engine_version             = "6.0"    ### 4.0.10, 5.0.6, 6.0, 6.2, 7.0, 7.1
  node_type                  = "cache.t3.micro"
  port                       = 6379
  parameter_group_name       = "default.redis6.x.cluster.on"
  multi_az_enabled           = false
  automatic_failover_enabled = true
  subnet_group_name          = aws_elasticache_subnet_group.redis_subnetgroup.name
  security_group_ids         = [aws_security_group.redis_sg.id]
#  preferred_cache_cluster_azs= data.aws_availability_zones.available.names
  apply_immediately          = true

  num_node_groups         = 1
  replicas_per_node_group = 1

  at_rest_encryption_enabled = true
  transit_encryption_enabled = false
#  auth_token                 = "abcdefgh123456789"
#  auth_token_update_strategy = "ROTATE"
}

