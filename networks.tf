resource "aws_vpc" "first_vpc" {
  cidr_block            = var.default_cidr
  tags                  = {
      name              = "my_first_vpc"
  }
}

resource "aws_subnet" "first_subnet" {
  vpc_id                = aws_vpc.first_vpc.id
  cidr_block            = var.subnet_range[0]
  availability_zone     = "ap-south-1a"

  tags                  = {
    Name                = var.subnet_names[0]
  }
}

resource "aws_subnet" "second_subnet" {
  vpc_id                = aws_vpc.first_vpc.id
  cidr_block            = var.subnet_range[1]
  availability_zone     = "ap-south-1b"

  tags                  = {
    Name                = var.subnet_names[1]
  }
}

resource "aws_subnet" "third_subnet" {
  vpc_id                = aws_vpc.first_vpc.id
  cidr_block            = var.subnet_range[2]
  availability_zone     = "ap-south-1c"

  tags                  = {
    Name                = var.subnet_names[2]
  }
}

resource "aws_subnet" "fourth_subnet" {
  vpc_id                = aws_vpc.first_vpc.id
  cidr_block            = var.subnet_range[3]
  availability_zone     = "ap-south-1b"

  tags                  = {
    Name                = var.subnet_names[3]
  }
}