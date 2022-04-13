resource "aws_default_vpc" "firstvpc" {
  tags = {
    Name       = "north-america-vpc"
    cidr_block = "10.0.0.0/16"
  }
}

resource "aws_default_subnet" "default_az1" {
  availability_zone = "us-west-2a"

  tags = {
    Name       = "Default subnet for us-west-2a"
    cidr_block = "10.0.1.0/24"
    vpc_id     = "${aws_default_vpc.firstvpc.id}"
  }
}
