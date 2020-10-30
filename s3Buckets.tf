#S3 Buckets for AWS CI/CD Pipeline

#This is the s3 bucket that the site will eventucally live
resource "aws_s3_bucket" "mtctestcodebuild" {
  bucket = "mtctestcodebuild"
  acl    = "public-read"

  website {
    index_document = "index.html"
    error_document = "error.html"

    routing_rules = <<EOF
[{
    "Condition": {
        "KeyPrefixEquals": "docs/"
    },
    "Redirect": {
        "ReplaceKeyPrefixWith": "documents/"
    }
}]
EOF
  }
}