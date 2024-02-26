terraform {
  
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_ssm_parameter" "example_param" {
  name  = "/config/dorinsday/dev-password" 
  type  = "SecureString"
  value = "Poootaaaattooees"


  tags = {
    Environment = "Middle Earth"
}
}