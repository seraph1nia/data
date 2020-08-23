resource "aws_s3_bucket" "raw_bucket" {
  bucket = var.bucket_raw
  acl    = "private"

  tags = {
    Name        = "Raw data"
    Environment = "Dev"
  }
  lifecycle {
    prevent_destroy = true 
  }
  lifecycle_rule {
    enabled = true
    transition {
      days          = 2
      storage_class = "GLACIER"
    }
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
