resource "aws_vpc" "first_vpc" {
  cidr_block            = var.default_cidr
  tags                  = {
      name              = "my_first_vpc"
  }
}

resource "aws_subnet" "subnets" {
  count                 = length(var.subnet_range)
  vpc_id                = aws_vpc.first_vpc.id
  cidr_block            = var.subnet_range[count.index]
  availability_zone     = "ap-south-1a"

  tags                  = {
    Name                = var.subnet_names[count.index]
  }
}