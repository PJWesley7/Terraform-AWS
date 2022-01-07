resource "aws_vpc" "main" {
  cidr_block = var.default_cidr
  tags = {
      name = "my_first_vpc"
  }
}