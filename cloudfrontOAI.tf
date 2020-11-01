#AWS CloudFront Origin Access Identiy

#OAI for blog site
resource "aws_cloudfront_origin_access_identity" "blog_origin_access_identity" {
  comment = "OAI for blog site"
}