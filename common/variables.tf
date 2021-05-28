variable "tfstate_global_bucket" {
  type        = "string"
  description = "Bucket name hosting terraform state file"
  default     = "sandbox"
}

variable "tfstate_global_bucket_region" {
  type        = "string"
  description = "Bucket region hosting terraform state file"
  default     = "eu-west-1"
}


variable "bucket_name" {
  type        = "string"
  description = ""
  default     = "*********"
}

variable "environment" {
    type        = "string"
    default     = "dev"
    description = "Deployment Environment"
}

variable "namespace"{
    type        = "string"
    default     = "eg"
    description = "Project namespace"
}

variable "table"{
    type        = "string"
    default     = "dev"
    description = "Deployment Environment"
}

variable "acl"{
    type        = "string"
    default     = "public-read"
    description = "acl bucket"
}

variable "hortaworkflow"{
    type        = "string"
    default     = "hortawf"
    description = "Project workflow"
}


variable "pbdmworkflow"{
    type        = "string"
    default     = "pbdmwf"
    description = "Project workflow"
}


variable "region" {
  type        = "string"
  default     = "eu-west-1"
  description = "AWS selected Region"
}

variable "profile" {
  type        = "string"
  default     = "invalid"
  description = "AWS Credential selected profile"
}


variable "bucket_policy_file" {
  type = "string"
  default = "../json_files/bucket_policy.json"
  description = "name of bucket policy .json file"
}


variable "codeDeploy_trust_policy" {
  type = "string"
  default = "../json_files/codeDeploy_trust_policy.json"
  description = "name of code deploy policy .json file"
}

variable "codeDeploy_policy" {
  type = "string"
  default = "../json_files/codeDeploy_policy.json"
  description = "name of code deploy policy .json file"

}

variable "lambda_list_names" {
  type    = "list"
  default = ["step-functions-lambda-dev-check_if_zip_file_exists_on_s3",
            "step-functions-lambda-dev-check_if_csv_file_exists_on_s3",
            "eccodes",
            "step-functions-lambda-dev-make_zip_file"]
}

variable "role" {
  type    = "string"
  default = ""
}

variable "custom_s3_bucket" {
  type        = "string"
  default     = ""
  description = "Use existing bucket for sensing the release update"
}

variable "custom_s3_path" {
  type        = "string"
  default     = ""
  description = "Customize path for sensing the release update"
}

variable "project_full_name" {
  type        = "string"
  default     = "medgold-ict-platform"
  description = "full name"
}

variable "project" {
  type        = "string"
  default     = "med-gold"
  description = "Name"
}

# ec2 variables

variable "create_default_security_group" {
  description = "Create default Security Group with only Egress traffic allowed"
  default     = "true"
}

variable "ssh_key_pair" {
  type = "string"
  description = "Key pair used to log in to the instance securely"
  default     = ""
}

variable "win_instance_name"{
  type = "string"
  description = "Name of Ec2"
  default     = "pbdm"
}


variable "subnet_ids" {
  description = "VPC Subnet ID the instance is launched in"
  default = []
}

variable "security_groups" {
  description = "List of Security Group IDs allowed to connect to the instance"
  type        = "list"
  default     = []
}

variable "win_instance_trust_policy" {
  type = "string"
  default = "../json_files/win-instance-trust-policy.json"
  description = "name of trust policy .json file"

}

variable "vpc_id" {
  type = "string"
  default = "vpc-ab8fc5cc"
  description = "Security group vpc_id"
}

variable "win_instance_policy" {
  type = "string"
  default = "../json_files/win-instance-policy.json"
  description = "name of trust policy .json file"

}

variable "instance_type" {
  type = "string"
  default = "t2-medium"
  description = "type of instance"

}


variable "bucket" {
  type = "string"
    description = "Bucket region hosting terraform state file"
  default = ""
}

