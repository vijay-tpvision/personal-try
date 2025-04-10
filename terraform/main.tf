# VPC
resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/22"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name        = "denzopa-vpc"
    project     = "denzopa"
    environment = "denzopa-dev"
  }
}

# Internet Gateway
resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name        = "denzopa-igw"
    project     = "denzopa"
    environment = "denzopa-dev"
  }
}

# Public Subnets
resource "aws_subnet" "public_1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.0.0/25"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true

  tags = {
    Name        = "denzopa-public-1"
    project     = "denzopa"
    environment = "denzopa-dev"
  }
}

resource "aws_subnet" "public_2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.0.128/25"
  availability_zone       = "ap-south-1b"
  map_public_ip_on_launch = true

  tags = {
    Name        = "denzopa-public-2"
    project     = "denzopa"
    environment = "denzopa-dev"
  }
}

resource "aws_subnet" "public_3" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/25"
  availability_zone       = "ap-south-1c"
  map_public_ip_on_launch = true

  tags = {
    Name        = "denzopa-public-3"
    project     = "denzopa"
    environment = "denzopa-dev"
  }
}

# Private Subnets
resource "aws_subnet" "private_1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.1.128/25"
  availability_zone = "ap-south-1a"

  tags = {
    Name        = "denzopa-private-1"
    project     = "denzopa"
    environment = "denzopa-dev"
  }
}

resource "aws_subnet" "private_2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.2.0/25"
  availability_zone = "ap-south-1b"

  tags = {
    Name        = "denzopa-private-2"
    project     = "denzopa"
    environment = "denzopa-dev"
  }
}

resource "aws_subnet" "private_3" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.2.128/25"
  availability_zone = "ap-south-1c"

  tags = {
    Name        = "denzopa-private-3"
    project     = "denzopa"
    environment = "denzopa-dev"
  }
}

# Route Tables
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }

  tags = {
    Name        = "denzopa-public-rt"
    project     = "denzopa"
    environment = "denzopa-dev"
  }
}

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name        = "denzopa-private-rt"
    project     = "denzopa"
    environment = "denzopa-dev"
  }
}

# Route Table Associations
resource "aws_route_table_association" "public_1" {
  subnet_id      = aws_subnet.public_1.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public_2" {
  subnet_id      = aws_subnet.public_2.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public_3" {
  subnet_id      = aws_subnet.public_3.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "private_1" {
  subnet_id      = aws_subnet.private_1.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "private_2" {
  subnet_id      = aws_subnet.private_2.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "private_3" {
  subnet_id      = aws_subnet.private_3.id
  route_table_id = aws_route_table.private.id
} 