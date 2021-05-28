variable "environment" {
    type        = "string"
    default     = ""
    description = "Deployment Environment"
}

variable "workflow"{
    type        = "string"
    default     = ""
    description = "Project workflow"
}

variable "region" {
  type        = "string"
  default     = "eu-west-1"
  description = "AWS selected Region"
}

variable "profile" {
  type        = "string"
  default     = ""
  description = "AWS Credential selected profile"
}

variable "table_name" {
    type = "string"
    default = ""
    description = "name of table"  
}

variable "s3_path" {
    type = "string"
    default = ""
    description = "s3 path of ecmwf files downloaded from CDS"     
}