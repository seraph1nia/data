resource "aws_s3_bucket" "raw_bucket" {
  bucket = var.bucket_raw
  acl    = "private"

  tags = {
    Name        = "terraform backends"
    Environment = "Dev"
  }
  lifecycle {
    prevent_destroy = true 
  }

}

resource "aws_s3_bucket" "kops_bucket" {
  bucket = var.kops_bucket
  acl    = "private"

  tags = {
    Name        = "Raw data"
    Environment = "Dev"
  }
  lifecycle {
    prevent_destroy = true 
  }
  versioning {
    enabled = true
  }
}
