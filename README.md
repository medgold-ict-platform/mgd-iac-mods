# Description

This repository contains the terraform modules used to deploy the common infrastructure of the platform.
Each module contains its own documentation.

## Modules

### `common`

Contains the definition of:
- Cognito User Pool, used for authentication
- DynamoDB Tables, NoSQL shared database
- IAM roles and policies, to provide permissions across the services

### `mgd-cds-downloader`

Contains the definition of the core infrastructure used by the CDS downloader, which are its DynamoDB tables

### `mgd-dashboard`

Contains the definition of the core infrastructure used by the Dashboard:
- Elasticsearch cluster, to store processed data
- Virtual Private Cloud, to isolate the resources from internet