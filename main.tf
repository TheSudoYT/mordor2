terraform {
  
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_ssm_parameter" "example_param" {
  name  = "/config/dorinsday/password" 
  type  = "SecureString"
  value = "Poootaaaattooees"


  tags = {
    Environment = "Middle Earth"
}
}