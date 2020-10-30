#S3 Buckets for AWS CI/CD Pipeline
resource "aws_s3_bucket" "testcodebuild" {
  bucket = "s3-website-test.codebuild"
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