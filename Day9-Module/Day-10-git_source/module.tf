module "git" {
    source = "github.com/rahulwagh112233/Terraform-Repo/Day1"

    ami = "ami-0a4408457f9a03be3"
  instance_type = "t2.micro"
  key_name = "mykey"
}