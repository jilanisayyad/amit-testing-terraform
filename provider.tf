terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.9.0"
    }
  }
}

provider "aws" {
  region     = "eu-west-1"
  access_key = "jhashdhdjhasd"
  secret_key = "jhasdasdasd"
}
