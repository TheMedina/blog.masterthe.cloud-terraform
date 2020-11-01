#AWS Route53 Records

resource "aws_route53_record" "Site1DomainName" {
  zone_id = var.zone_id
  name    = var.origin_id
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.blogCDN.domain_name
    zone_id                = aws_cloudfront_distribution.blogCDN.hosted_zone_id
    evaluate_target_health = true
  }
}