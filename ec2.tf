resource "aws_instance" "inst1" {
  ami = "ami-05bfbece1ed5beb54"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.subnet1.id
  vpc_security_group_ids = [aws_security_group.sg1.id]
  user_data = file("shell.sh")
  tags = {
    Name = "charinst"
  }
}
resource "aws_instance" "inst2" {
  ami = "ami-05bfbece1ed5beb54"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.subnet1.id
  vpc_security_group_ids = [aws_security_group.sg1.id]
  user_data = file("shell.sh")
  tags = {
    Name = "kirinst"
  }
}
output "ip_address" {
  value = aws_instance.inst2.public_ip
}