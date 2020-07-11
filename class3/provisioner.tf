resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
resource "aws_instance" "web" {
  ami           = "${data.aws_ami.centos.id}"
  key_name      = "${aws_key_pair.deployer.key_name}"
  instance_type = "t2.micro"
  provisioner   "remote-exec" {
    connection {
        host        = "${self.public_ip}"
        type        = "ssh"
        user        = "centos"
        private_key = "${file("~/.ssh/id_rsa")}"
    }
    inline = [
      "sudo yum install -y epel-release -y",
      "sudo yum install httpd -y",
      "sudo systemctl start httpd",
      "sudo systemctl enable httpd",
    ]
  },

   provisioner   "file" {
    connection {
        host        = "${self.public_ip}"
        type        = "ssh"
        user        = "ec2-user"
        private_key = "${file("~/.ssh/id_rsa")}"
    }
    source = "testfile"
    destination = "/tmp/testfile"
   }
}
