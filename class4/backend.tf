terraform {
  backend "s3" {
    bucket = "terraform-state-class-berkay"
    key    = "jenkins/us-east-1/tools/oregon/asg.tfstate"
    region = "us-east-1"
  }
}
