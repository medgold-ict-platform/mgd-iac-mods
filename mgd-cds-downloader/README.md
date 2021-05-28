# DynamoDB terragrunt module

Module Input Variables
----------------------
| Name                | Description                                | Type    | Default       |
|---------------------|--------------------------------------------|:-------:|:-------------:|
| environment         | Deployment Environment                     | string  | `""`          |
| workflow            | Project workflow                           | string  | `""`          |
| region              | AWS selected Region                        | string  | `""`          |
| profile             | AWS Credential selected profile            | string  | `""`          |
| table_name          | name of table                              | string  | `""`          |
| s3_path             | s3 path of ecmwf files downloaded from CDS | string  | `""`          |
