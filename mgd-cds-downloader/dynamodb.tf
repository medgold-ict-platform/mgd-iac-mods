resource "aws_dynamodb_table" "table" {
    name ="${var.environment}-${var.table_name}"  
    billing_mode   = "PROVISIONED"
    read_capacity  = 20
    write_capacity = 20
    hash_key       = "id"

    attribute {
        name = "id"
        type = "S"
    }
        
    tags = {
        Terraform   = "true"
        Environment = "${var.environment}"
    }
}

resource "aws_ssm_parameter" "" {
  name             = "/${var.environment}/${var.project}/s3-path"
  type             = "String"
  overwrite        = "true"
  value            = "${aws_dynamodb_table.wfs-table.name}"
}

