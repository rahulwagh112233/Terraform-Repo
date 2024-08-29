variable "ami" {
    description = "inserting ami values to main.tf"
    type = string
    default = "ami-0a4408457f9a03be3"
  
}

variable "instance_type" {
    description = "inserting instance type to main.tf"
    type = string
    default = "t2.micro"
  
}
variable "key_name" {
    type = string
    default = "mykey"
  
}