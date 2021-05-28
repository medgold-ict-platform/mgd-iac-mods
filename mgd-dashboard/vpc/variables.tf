variable "region" {
  default = ""
}

variable "profile" {
  default = ""
}


variable "environment" {
  default = ""
}
variable "project" {
  default = ""
}

variable "vpc_cidr" {
    type = "string"
    default = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "A list of public subnets inside the VPC."
  default     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

variable "private_subnets" {
  description = "A list of private subnets inside the VPC."
  default     = ["10.0.7.0/24", "10.0.8.0/24", "10.0.9.0/24"]
}

variable "azs" {
  description = "A list of Availability zones in the region"
  default     = ["us-west-2a", "us-west-2b", "us-west-2c"]
}

variable "enable_nat_gateway" {
    type = "string"
    default = "false"
}

variable "database_subnets" {
  description = "A list of database subnets inside the VPC."
  default     = ["10.0.21.0/24", "10.0.22.0/24", "10.0.23.0/24"]
}

variable "elasticache_subnets" {
  description = "A list of database subnets inside the VPC."
  default     = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}