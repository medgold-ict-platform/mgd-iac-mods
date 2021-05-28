module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "1.67.0"
  name = "${var.environment}-${var.project}"
  cidr = "${var.vpc_cidr}"

  azs                          = ["${var.azs}"]
  private_subnets              = ["${var.private_subnets}"]
  public_subnets               = ["${var.public_subnets}"]
  database_subnets             = ["${var.database_subnets}"]
  elasticache_subnets          = ["${var.elasticache_subnets}"]
  create_database_subnet_group = false
  enable_nat_gateway       = false
  enable_vpn_gateway       = false
  enable_dns_hostnames     = true
  enable_dns_support       = true
  enable_s3_endpoint       = true
  enable_dynamodb_endpoint = false

  tags = {
    Terraform   = "true"
    Environment = "${var.environment}"
  }
}
