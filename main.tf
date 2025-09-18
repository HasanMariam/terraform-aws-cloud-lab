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
}
output "random_string_value" {
  value = random_string.demorandoemstring.result
}
