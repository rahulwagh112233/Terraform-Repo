resource "aws_s3_bucket" "name" {
    bucket = "rahullllldemo"

}

resource "aws_s3_bucket_versioning" "name" {
    bucket = "rahullllldemo"
    versioning_configuration {
    status = "Enabled"
   
    } 
}
