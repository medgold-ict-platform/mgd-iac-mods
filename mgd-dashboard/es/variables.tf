variable "project" {
    description = "Set the project name."
}

variable "environment" {
    description = "Define the environment."
}
variable "region" {
  default = "eu-west-1"
}

variable "profile" {
  default = ""
}

variable "es_instance_count" {
  description = "Number of es instaces"
}

variable "es_instance_type" {
    description = "Type of es instaces"
}

variable "ebs_volume_size" {
    description = "volume size of ebs"
}

variable "es_version" {
    description = "es version"
}

variable "vpc_id" {
    description = "id of existing vpc"
}

variable "azs" {
    description = "availability zones"
    default = []
}
