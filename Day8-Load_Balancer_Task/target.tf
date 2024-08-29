resource "aws_lb_target_group" "tg" {
  name = "Target-Group"
  port = "80"
  protocol = "HTTP"
  vpc_id = aws_vpc.cust.id

  health_check {
    healthy_threshold = 2
    unhealthy_threshold = 2
    timeout = 5
    interval = 30
    path = "/"
    matcher = "200"
  }

  tags = {
    Name = "Target-group"
  }
}