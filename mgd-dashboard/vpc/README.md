# VPC terragrunt module

Module Input Variables
----------------------
| Name                      | Description                               | Type         | Default                                              |
|---------------------------|-------------------------------------------|:------------:|:----------------------------------------------------:|
| region                    | Set the region                            | string       | `""`                                                 |
| profile                   | Set the profile                           | string       | `""`                                                 |
| environment               | Set the environments                      | string       | `""`                                                 |
| project                   | Set the project name                      | string       | `""`                                                 |
| vpc_cidr                  | Size of the VPC                           | string       | `"10.0.0.0/16"`                                      |
| public_subnets            | A list of public subnets inside the VPC.  | list(string) | `["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]`|
| private_subnets           | A list of private subnets inside the VPC. | list(string) | `["10.0.7.0/24", "10.0.8.0/24", "10.0.9.0/24"]`      |
| azs                       | A list of Availability zones in the region| list(string) | `["us-west-2a", "us-west-2b", "us-west-2c"]`         |
| enable_nat_gateway        | id of existing vpc                        | string       | `"false"`                                            |  
| database_subnets          | A list of database subnets inside the VPC.| list(string) | `["10.0.21.0/24", "10.0.22.0/24", "10.0.23.0/24"]`   |
| elasticache_subnets       | A list of database subnets inside the VPC.| list(string) | `["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]`      |

Usage
-----
```hcl
terraform {
  source = "git::ssh://git@bitbucket.org/beetobit/terragrunt-aws-vpc?ref=v0.12"
}

inputs = {
  vpc_azs  = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  
  vpc_cidr = "10.1.0.0/16"

  private_subnets = ["10.1.11.0/24", "10.1.12.0/24", "10.1.13.0/24"]

  public_subnets = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]

  database_subnets   = ["10.1.128.0/24", "10.1.129.0/24", "10.1.130.0/24"]

  elasticache_subnets = ["10.1.132.0/24", "10.1.133.0/24", "10.1.134.0/24"]
  
  redshift_subnets    = ["10.1.136.0/24", "10.1.137.0/24", "10.1.138.0/24"]

  single_nat_gateway     = true
  
  one_nat_gateway_per_az = false
  
  enable_vpn_gateway = false

}
```