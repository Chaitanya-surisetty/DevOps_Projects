resource "aws_subnet" "public-subnets" {
  #count             = 4 # 0 1 2
  #count             = length(local.new_private_subnet_cidrs)
  vpc_id            = aws_vpc.default.id
#  cidr_block        = element(local.new_private_subnet_cidrs, count.index)
#  availability_zone = element(var.azs, count.index)
  cidr_block        = local.new_public_subnet_cidrs
  availability_zone = var.azs
  tags = {
   # Name              = "${var.vpc_name}-PublicSubnet-${count.index + 1}"
    Name              = "${var.vpc_name}-PublicSubnet"
    Terraform-Managed = "Yes"
    Env               = local.new_environment
    ProjectID         = local.projid
  }
}