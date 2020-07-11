terraform {
backend "s3" {
bucket = "terraform-state-class-berkay"
key = "eks/us-east-1/tools/virgina/eks.tfstate"
region = "us-east-1"
  }
}
