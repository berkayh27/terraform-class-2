resource "aws_subnet" "public1" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${var.public_cidr_block1}"
  map_public_ip_on_launch = true
  availability_zone   = "${var.region}a"
  tags = "${var.tags}"
}
resource "aws_subnet" "public2" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${var.public_cidr_block2}"  
  map_public_ip_on_launch = true
  availability_zone   = "${var.region}b"
  tags = "${var.tags}"
}
resource "aws_subnet" "public3" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${var.public_cidr_block3}"
  map_public_ip_on_launch = true
  availability_zone   = "${var.region}c"
  tags = "${var.tags}"
}