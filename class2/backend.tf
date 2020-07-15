terraform {
backend "s3" {
bucket = "terraform-state-class-berkay"
key = "jenkins/us-east-1/tools/virgina/jenkins.tfstate"
region = "us-east-1"
# dynamodb_table = "prod"
  }
}
