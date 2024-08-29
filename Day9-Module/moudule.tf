module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"
ami = "ami-0a4408457f9a03be3"
  instance_type          = "t2.micro"
  key_name               = "mykey"
  monitoring             = true

  subnet_id              = "subnet-07c3853603d13fe5e"


}