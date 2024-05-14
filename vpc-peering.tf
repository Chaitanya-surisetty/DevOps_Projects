data "aws_vpc" "Practice_VPC" {
  id = "vpc-03146954091b3bf24"
}

data "aws_route_table" "Publicroute_Practice_VPC_rt" {
  subnet_id = "subnet-0a669294f987df972"
}

resource "aws_vpc_peering_connection" "foo" {
  peer_vpc_id = data.aws_vpc.Practice_VPC.id
  vpc_id      = aws_vpc.default.id
  auto_accept = true
  accepter {
    allow_remote_vpc_dns_resolution = true
  }

  requester {
    allow_remote_vpc_dns_resolution = true
  }

  tags = {
    Name = "Ansible-${var.vpc_name}-Peering"
  }
}

resource "aws_route" "peering-to-practice-vpc" {
  route_table_id            = aws_route_table.terraform-public.id
  destination_cidr_block    = "10.0.0.0/16"
  vpc_peering_connection_id = aws_vpc_peering_connection.foo.id
  #depends_on                = [aws_route_table.terraform-public]
}

resource "aws_route" "peering-from-practice-vpc" {
  route_table_id            = data.aws_route_table.Publicroute_Practice_VPC_rt.id
  destination_cidr_block    = "10.36.0.0/16"
  vpc_peering_connection_id = aws_vpc_peering_connection.foo.id
  #depends_on                = [aws_route_table.terraform-public]
}