resource "aws_lb" "application-lb" {
  name = "aws-alb"
  internal = false
  ip_address_type = "ipv4"
  load_balancer_type = "application"
  security_groups = [aws_security_group.sg1.id]
  subnets = [aws_subnet.subnet1.id,aws_subnet.subnet2.id]
  tags = {
    Name = "aws-alb"
  }
}