#Validation Constructs for ACM

#Validation for MTC Wildcard Cert
resource "aws_acm_certificate_validation" "mtcValidation" {
  certificate_arn = aws_acm_certificate.blogMTCCert.arn
}