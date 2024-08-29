resource "aws_lb_target_group" "mytg" {
  name     = "tg"
  port     = "80"
  protocol = "HTTP"
  vpc_id   = aws_vpc.myvpc.id
  depends_on = [ aws_vpc.myvpc.id ]
}

resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
  
}