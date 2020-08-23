terraform {
  backend "s3" {
    bucket = "bart-test-terra-raw"
    key    = "states/buckets"
    region = "us-east-2"
  }
}
