terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.9.0"
    }
  }
}
provider "aws" {
  # Configuration options
  region = "eu-central-1"
}
provider "random" {
    # configuration options for the random provider
}
resource "random_string" "demorandoemstring" {
  length = 8
  upper = false
  special = false
}
output "random_string_value" {
  value = random_string.demorandoemstring.result
}

resource "aws_s3_bucket" "demo_backet" {
    bucket = "hasan-tf-${random_string.demorandoemstring.result}-v2"
  
}

