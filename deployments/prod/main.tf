terraform {
  backend "s3" {
    bucket         = "mordor2-terraform-state" # Use the appropriate bucket name for each project
    key            = "prod/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "mordor-terraform-state-lock"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_ssm_parameter" "example_param" {
  name  = "/config/dorinsday/prod-password" 
  type  = "SecureString"
  value = "Poootaaaattooees"


  tags = {
    Environment = "Middle Earth"
}
}