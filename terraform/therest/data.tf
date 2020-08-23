data "aws_s3_bucket" "raw_bucket" {
  bucket = var.bucket_raw
}

data "aws_availability_zones" "available" {}