variable "ami" {
    description = "adding instance for ec2"
    type = string

  default = ""
}
variable "instance_type" {
    description = "adding instance type"
    type = string
   default = ""
}
variable "key_name" {
    description = "adding key to the instance"
    type = string
    default = ""
  
}