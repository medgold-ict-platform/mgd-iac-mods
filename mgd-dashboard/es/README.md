# Elasticsearch terragrunt module

Module Input Variables
----------------------
| Name                      | Description           | Default                                       |
|---------------------------|-----------------------|:---------------------------------------------:|
| project                   | Set the project name  |                                         
| region                    | Set the region        | `"eu-west-1"`                                 |
| profile                   | Set the AWS profile   | `""`                                          |
| es_instance_count         | Number of es instaces |                                               |
| es_instance_type          | Type of es instaces   |                                               |
| ebs_volume_size           | volume size of ebs    |                                               |
| es_version                | es version            |                                               |
| vpc_id                    | id of existing vpc    |                                               |  
| azs                       | availability zones    | `[]`                                          | 

Usage
-----
```hcl
terraform {
  source = "git::ssh://git@bitbucket.org/beetobit/mgd-iac-mods//mgd-dashboard//es?ref=develop"
}

inputs = {
es_instance_count = "1"

es_instance_type = "r5.large.elasticsearch"

ebs_volume_size = "30"

es_version = "7.1"

vpc_id = "vpc-3565fc53"

}
```