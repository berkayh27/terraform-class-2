provider "aws" {
  region = "us-east-1"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "terraform-state-class-berkay"
    key = "jenkins/us-east-1/tools/virgina/jenkins.tfstate"
    region = "us-east-1"
  }
}


resource "aws_instance" "web" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"
  subnet_id     = "${data.terraform_remote_state.network.public_subnets1}"

}

output "public_subnets1" {
    value = "${data.terraform_remote_state.network.public_subnets1}" 
    }

output "public_subnets2" {
    value = "${data.terraform_remote_state.network.public_subnets2}" 
    }

output "public_subnets3" {
    value = "${data.terraform_remote_state.network.public_subnets3}" 
    }