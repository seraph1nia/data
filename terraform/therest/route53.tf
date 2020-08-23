resource "aws_route53_zone" "private" {
  name = var.kube_route_53

  vpc {
    vpc_id = aws_vpc.main.id
  }
}
