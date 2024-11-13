 locals {
  bucket-name = "s3-${(formatdate("YY-MM-DD-HH-mm", timestamp()))}"
}

resource "aws_s3_bucket" "s3b" {
  bucket = local.bucket-name
  tags = {
    Name = local.bucket-name
  }
}