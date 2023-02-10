resource "aws_subnet" "subnet1" {
  vpc_id = aws_vpc.vpc1.id
  availability_zone = "us-east-2a"
  cidr_block = "10.0.0.0/17"
  tags = {
    Name="inst_subnet"
  }
  map_public_ip_on_launch = true
}
resource "aws_subnet" "subnet2" {
  vpc_id = aws_vpc.vpc1.id
  availability_zone = "us-east-2b"
  cidr_block = "10.0.128.0/17"
  tags = {
    Name="load_subnet"
  }
  map_public_ip_on_launch = true
}