terraform {

required_version = "0.11.14"
required_providers {
  aws = "2.68.0"
  }

backend "s3" {
  bucket = "terraform-state-class-berkay"
  key = "jenkins/us-east-1/tools/virgina/jenkins.tfstate"
  region = "us-east-1"
  # dynamodb_table = "prod"

  }
}
