terraform {
  ##backend "s3" {
##    bucket         = "mordor2-terraform-state" # Use the appropriate bucket name for each project
##    key            = "stage/terraform.tfstate"
##    region         = "us-east-1"
##    dynamodb_table = "mordor-terraform-state-lock"
##    encrypt        = true
##  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_ssm_parameter" "example_param" {
  name  = "/config/dorinsday/stage-password" 
  type  = "SecureString"
  value = "Poootaaaattooees"


  tags = {
    Environment = "Middle Earth"
}
}