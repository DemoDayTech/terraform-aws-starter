terraform {
  /* The following 'cloud' block migrates your state to HCP Terraform. 
  *     You must store your AWS credentials in HCP Terraform -> Workspace -> Variables for this to work. 
  */
  cloud {
    organization = "DemoDayTech"

    workspaces {
      project = "Learn Terraform"
      name = "learn-terraform-aws-get-started"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.92"
    }
  }

  required_version = ">= 1.2"
}