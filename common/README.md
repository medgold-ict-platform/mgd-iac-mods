# Terragrunt module

Module Input Variables
----------------------
| Name                            | Description                                                 | Type    | Default                  |
|---------------------------------|-------------------------------------------------------------|:-------:|:------------------------:|
| tfstate_global_bucket           | Bucket name hosting terraform state file                    | string  | `"sandbox"`              |
| tfstate_global_bucket_region    | Bucket region hosting terraform state file                  | string  | `"eu-west-1"`            |
| bucket_name                     |                                                             | string  | `"******"`     |
| environment                     | Deployment Environment                                      | string  | `"dev"`                  |
| namespace                       | Project namespace                                           | string  | `"eg"`                   |
| table                           | Deployment Environment                                      | string  | `"dev"`                  |
| acl                             | acl bucket                                                  | string  | `"public-read"`          |
| hortaworkflow                   | Project workflow                                            | string  | `"hortawf"`              |
| pbdmworkflow                    | Project workflow                                            | string  | `"pbdmwf"`               |
| region                          | AWS selected Region                                         | string  | `"eu-west-1"`            |
| profile                         | AWS Credential selected profile                             | string  | `"invalid"`              |
| bucket_policy_file              | name of bucket policy .json file                | string  | `"../json_files/bucket_policy.json"` |
| codeDeploy_trust_policy         | name of code deploy policy .json file           | string  | `"../json_files/codeDeploy_trust_policy.json"`|
| codeDeploy_policy               | name of code deploy policy .json file           | string  | `"../json_files/codeDeploy_policy.json"`   |
| lambda_list_names               |                                                 | list    |`"["step-functions-lambda-dev-check_if_zip_file_exists_on_s3","step-functions-lambda-dev-check_if_csv_file_exists_on_s3","eccodes", "step-functions-lambda-dev-make_zip_file"]"`|
| role                            |                                                              | string  | `""`                    |
| custom_s3_bucket                | Use existing bucket for sensing the release update           | string  | `""`                    |
| custom_s3_path                  | Customize path for sensing the release update                | string  | `""`                    |       
| project_full_name               | full name                                                    | string  | `"medgold-ict-platform"`|
| project                         | Name                                                         | string  | `"med-gold"`            |
| create_default_security_group   | Create default Security Group with only Egress traffic allowed|        | `"true"`                |
| ssh_key_pair                    | Key pair used to log in to the instance securely             | string  | `""`                    |
| win_instance_name               | Name of Ec2                                                  | string  | `"pbdm"`                |
| subnet_ids                      | VPC Subnet ID the instance is launched in                    |         | `[]`                    |
| security_groups                 | List of Security Group IDs allowed to connect to the instance|list     | `[]`                    |
| win_instance_trust_policy       | name of trust policy .json file               | string  | `"../json_files/win-instance-trust-policy.json"`|
| vpc_id                          | Security group vpc_id                                        | string  | `"vpc-ab8fc5cc"`        |
| win_instance_policy             | name of trust policy .json file               | string  | `"../json_files/win-instance-policy.json"`|
| instance_type                   | type of instance                                             | string  | `"t2-medium"`           |
| bucket                          | Bucket region hosting terraform state file                   | string  | `""`                    |
