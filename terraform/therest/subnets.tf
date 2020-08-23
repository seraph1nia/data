resource "aws_subnet" main0 {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.10.0.0/24"
  availability_zone = data.aws_availability_zones.available.names[0]
  map_public_ip_on_launch = true

  tags = {
    Tier = "Main"
  }
}

resource "aws_subnet" main1 {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.10.10.0/24"
  availability_zone = data.aws_availability_zones.available.names[1]
  map_public_ip_on_launch = true

  tags = {
    Tier = "Main"
  }
}

resource "aws_subnet" main2 {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.10.20.0/24"
  availability_zone = data.aws_availability_zones.available.names[2]
  map_public_ip_on_launch = true

  tags = {
    Tier = "Main"
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.main0.id
  route_table_id = aws_route_table.r.id
}


resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.main1.id
  route_table_id = aws_route_table.r.id
}

resource "aws_route_table_association" "c" {
  subnet_id      = aws_subnet.main2.id
  route_table_id = aws_route_table.r.id
}