# terraform-aws-starter


## Getting Started
1. Install Terraform
    - Reference: https://developer.hashicorp.com/terraform/install
    - Once installed, run `terraform --verion` command to ensure its installed properly
2. Install the AWS CLI
    - Reference: https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
    - Once installed, run `aws --version` command to ensure its installed properly
3. Create an AWS IAM User with programmatic access (AWS CLI + Terraform) with the following Permissions Policies:
    - AmazonS3FullAccess
    - AmazonDynamoDBFullAccess
    - AmazonEC2FullAccess
    - CloudWatchLogsFullAccess
    - Generate Access/Secret Keys for this user, and add to ~/.aws/config and ~/.aws/credentials
    - For this project, `region = us-east-2` is being used (Specify this in ~/.aws/config for this user profile)

## bootstrap 
- The initial resources terraform needs to manage its state are contained in the bootstrap/ project. This project contains the IaC for the S3 bucket and DynamoDB Table which manage/lock the state file (terraform.tfstate). 
- You need to deploy these resources first so that the rest of the project works and can store its state in these resources. 
    - cd bootstrap
    - terraform init
    - terraform apply