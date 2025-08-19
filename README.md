# terraform-aws-starter

bootstrap 
- The initial resources terraform needs to manage its state are contained in the bootstrap/ project. This project contains the IaC for the S3 bucket and DynamoDB Table which manage/lock the state file (terraform.tfstate). 
- You need to deploy these resources first so that the rest of the project works and can store its state in these resources. 
    - cd bootstrap
    - terraform init
    - terraform apply