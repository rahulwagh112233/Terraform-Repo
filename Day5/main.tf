resource "aws_s3_bucket" "name" {
    bucket = "rahullllldemo"

}

resource "aws_s3_bucket_versioning" "name" {
    bucket = "rahullllldemo"
    versioning_configuration {
    status = "Enabled"
   
    } 
}
resource "aws_dynamodb_table" "name" {
    name = "terraform-state-lock-dynamo"
    hash_key = "LockID"
read_capacity = 20
write_capacity = 20

attribute {
  name = "LockID"
  type = "S"
}
  
}