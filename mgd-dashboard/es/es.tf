# resource "aws_iam_service_linked_role" "es" {
#   aws_service_name = "es.amazonaws.com"
# }

module "es" {
  source                         = "git::ssh://git@bitbucket.org/beetobit/do-t-es.git"
  domain_name                    = "${var.environment}-${var.project}-es"
  
  vpc_options                    = {
    security_group_ids = ["${aws_security_group.es.id}"]
    subnet_ids         = ["${data.aws_subnet_ids.es.ids}"]
  }

  instance_count                 = "${var.es_instance_count}"
  instance_type                  = "${var.es_instance_type}"
#   dedicated_master_type          = "t2.small.elasticsearch"
  es_zone_awareness              = false
  ebs_volume_size                = "${var.ebs_volume_size}"
  snapshot_start_hour = "2"
  es_version = "${var.es_version}"
#   management_iam_roles
}

resource "aws_security_group" "es" {
  name        = "${var.environment}-${var.project}-es-sg"
  description = "Allow all inbound traffic"
  vpc_id      = "${var.vpc_id}"

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [""]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

data "aws_vpc" "vpc_output" {
  filter {
    name   = "tag:Name"
    values = ["${var.environment}-${var.project}"] # insert value here
  }
}

data "aws_subnet_ids" "es" {
  vpc_id = "${var.vpc_id}"
  filter {
    name   = "tag:Name"
    values = ["${var.environment}-${var.project}-elasticache-${element(var.azs, 0)}"] # insert value here
  }
}