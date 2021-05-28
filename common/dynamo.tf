module "Dataset-info" {
    source = "git::https://github.com/cloudposse/terraform-aws-dynamodb.git?ref=master"

    stage = "${var.environment}"
    enable_autoscaler = "true"
    enable_streams = "true"
    stream_view_type = "NEW_IMAGE"
    name = "Dataset-info-${var.namespace}-${var.environment}"
    hash_key = "id"
    namespace = "${var.namespace}"

}

resource "aws_dynamodb_table" "basic-dynamodb-table" {
    name = "Dataset-info-${var.namespace}-${var.environment}"  billing_mode   = "PROVISIONED"
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

module "Dataset-metadata" {
    source = "git::https://github.com/cloudposse/terraform-aws-dynamodb.git?ref=master"

    stage = "${var.environment}"
    enable_autoscaler = "true"
    enable_streams = "true"
    stream_view_type = "NEW_IMAGE"
    name = "Dataset-metadata-${var.project}-${var.environment}"
    hash_key = "metadata"
    namespace = "${var.namespace}"

    tags = {
        Terraform   = "true"
        Environment = "${var.environment}"
    }
}

module "Workflow" {
    source = "git::https://github.com/cloudposse/terraform-aws-dynamodb.git?ref=master"

    stage = "${var.environment}"
    enable_autoscaler = "true"
    enable_streams = "true"
    stream_view_type = "NEW_IMAGE"
    name = "Workflow-${var.project}-${var.environment}"
    hash_key = "id"
    namespace = "${var.namespace}"

    tags = {
        Terraform   = "true"
        Environment = "${var.environment}"
    }
}

module "Api-request" {
    source = "git::https://github.com/cloudposse/terraform-aws-dynamodb.git?ref=master"

    stage = "${var.environment}"
    enable_autoscaler = "true"
    enable_streams = "true"
    stream_view_type = "NEW_IMAGE"
    name = "Api-request-${var.project}-${var.environment}"
    hash_key = "MessageId"
    namespace = "${var.namespace}"

    tags = {
        Terraform   = "true"
        Environment = "${var.environment}"
    }
}


