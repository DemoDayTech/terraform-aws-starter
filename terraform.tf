terraform {
  /* The following 'cloud' block migrates your state to HCP Terraform. 
  *     You must store your AWS credentials in HCP Terraform -> Workspace -> Variables for this to work. 
  */
  # cloud {
  #   organization = "DemoDayTech"

  #   workspaces {
  #     project = "Learn Terraform"
  #     name = "learn-terraform-aws-get-started"
  #   }
  # }

  // The following 'backend' block migrates your state to AWS S3.
  // Make sure you clear out your .terraform directory if you switch from HCP Terraform to S3 for storing state.
  backend "s3" {
    bucket = "terraform-aws-starter"
    key    = "terraform-state/terraform.tfstate"
    region = "us-east-2"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.92"
    }
  }

  required_version = ">= 1.2"
}