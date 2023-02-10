resource "aws_lb_target_group_attachment" "tgattach" {
  target_group_arn = aws_lb_target_group.tg.arn
  target_id        = aws_instance.inst1.id
}
resource "aws_lb_target_group_attachment" "tgattach2" {
  target_group_arn = aws_lb_target_group.tg.arn
  target_id        = aws_instance.inst2.id
}