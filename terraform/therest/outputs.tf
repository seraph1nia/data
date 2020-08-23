output "vpc_id" {
  value = aws_vpc.main.id
}

output "subnet0" {
  value = aws_subnet.main0.id
}

output "subnet1" {
  value = aws_subnet.main1.id
}

output "subnet2" {
  value = aws_subnet.main2.id
}

output "subnet0az" {
  value = aws_subnet.main0.availability_zone
}

output "subnet1az" {
  value = aws_subnet.main1.availability_zone
}

output "subnet2az" {
  value = aws_subnet.main2.availability_zone
}

output "kops_bucket" {
    value = data.aws_s3_bucket.raw_bucket.bucket
}

output "route53_name" {
    value = aws_route53_zone.private.name
}


