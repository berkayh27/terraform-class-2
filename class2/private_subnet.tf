resource "aws_subnet" "private1" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${var.private_cidr_block1}"
  availability_zone   = "${var.region}a"
  tags = "${var.tags}"
}

resource "aws_subnet" "private2" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${var.private_cidr_block2}"
  availability_zone   = "${var.region}b"
  tags = "${var.tags}"
}

resource "aws_subnet" "private3" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${var.private_cidr_block3}"
  availability_zone   = "${var.region}c"
  tags = "${var.tags}"
}

