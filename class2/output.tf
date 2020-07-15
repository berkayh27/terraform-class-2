output "VPC_ID" {
    value = "${aws_vpc.main.id}"
}

output "public_subnets" {
    value = [ "${aws_subnet.public1.id} ${aws_subnet.public1.cidr_block} ${aws_subnet.public1.availability_zone}",
                "${aws_subnet.public2.id} ${aws_subnet.public2.cidr_block} ${aws_subnet.public2.availability_zone}",
                "${aws_subnet.public3.id} ${aws_subnet.public3.cidr_block} ${aws_subnet.public3.availability_zone}"
    ]
}

output "private_subnets" {
    value = [ "${aws_subnet.private1.id} ${aws_subnet.private1.cidr_block} ${aws_subnet.private1.availability_zone}",
                "${aws_subnet.private2.id} ${aws_subnet.private2.cidr_block} ${aws_subnet.private2.availability_zone}",
                "${aws_subnet.private3.id} ${aws_subnet.private3.cidr_block} ${aws_subnet.private3.availability_zone}"
    ]
}

output "region" {
    value = "${var.region}"
}

output "tags" {
    value = "${var.tags}"
}

output "public_subnets1" {
    value = "${aws_subnet.public1.id}" 
    }

output "public_subnets2" {
    value = "${aws_subnet.public2.id}" 
    }

output "public_subnets3" {
    value = "${aws_subnet.public3.id}" 
    }

output "private_subnets1" {
    value = "${aws_subnet.private1.id}" 
    }

output "private_subnets2" {
    value = "${aws_subnet.private2.id}" 
    }

output "private_subnets3" {
    value = "${aws_subnet.private3.id}" 
    }