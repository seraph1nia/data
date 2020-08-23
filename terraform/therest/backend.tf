terraform {
  backend "s3" {
    bucket = "bart-test-terra-raw"
    key    = "states/therest"
    region = "us-east-2"
  }
}

