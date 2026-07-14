resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.devops_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true

  tags = {
    Name                               = "public-subnet-1"
    "kubernetes.io/role/elb"           = "1"
    "kubernetes.io/cluster/devops-eks" = "shared"
  }
}

resource "aws_subnet" "public_subnet_2" {
  vpc_id                  = aws_vpc.devops_vpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "ap-south-1b"
  map_public_ip_on_launch = true

  tags = {
    Name                               = "public-subnet-2"
    "kubernetes.io/role/elb"           = "1"
    "kubernetes.io/cluster/devops-eks" = "shared"
  }
}

