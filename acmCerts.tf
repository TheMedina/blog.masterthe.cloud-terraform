#ACM Resource Blocks

#Wildcard Cert for *.masterthe.cloud
resource "aws_acm_certificate" "blogMTCCert" {
  domain_name       = var.acm_domain
  validation_method = "EMAIL"

  tags = {
    Environment = "prod"
  }

  lifecycle {
    create_before_destroy = true
  }
}