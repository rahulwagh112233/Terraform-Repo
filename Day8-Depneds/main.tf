
resource "aws_instance" "name" {
    ami = "ami-0a4408457f9a03be3"
  instance_type = "t2.micro"
  key_name = "mykey"

  depends_on = [aws_s3_bucket.name ]
}

resource "aws_s3_bucket" "name" {
    bucket = "rahulll"

}
#call s3 bucket
