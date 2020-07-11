provider "aws" {
  region  = "us-east-1"
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

resource "aws_instance" "web" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"

  tags = "${var.tags}"
}

resource "aws_route53_record" "www" {
  zone_id = "Z077456916WZUOGVMRNHL"
  name    = "www.berkayh.com"
  type    = "A"
  ttl     = "5"
  records = ["${aws_instance.web.public_ip}"]
}


resource "aws_instance" "web2" {
    ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"

  tags = "${var.tags}"
}