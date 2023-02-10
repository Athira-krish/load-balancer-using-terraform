resource "aws_lb_target_group" "tg" {
  port = "80"
  protocol = "HTTP"
  target_type = "instance"
  name = "targetload"
  vpc_id = aws_vpc.vpc1.id
  health_check {
    interval            = "10"
    path                = "/"
    protocol            = "HTTP"
    timeout             = "5"
    healthy_threshold   = "5"
    unhealthy_threshold = "2"
  }
}
