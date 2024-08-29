resource "aws_lb" "alb" {
  name               = "alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [default]
  subnets            = ["subnet-0112125ebec341505","subnet-0e843fc144785f626" ]

    tags = {
    Name = "alb"
  }
  depends_on = [ aws_lb_target_group.id]
}
resource "ws_lb_listener" "listner" {
  load_balancer_arn = aws_lb.load_balancer_arn.id
  port              = "80"
  protocol          = "HTTP"

}
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.front_end.arn
    depends_on = [ aws_lb_target_group.id]


  }
  
