#S3 Buckets for AWS CI/CD Pipeline

#This is the s3 bucket that the site will eventucally live
resource "aws_s3_bucket" "mtctestcodebuild" {
  bucket = var.static_web_bucket_name
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

#This will be the S3 bucket that will function as our Artifact Store
resource "aws_s3_bucket" "mtctestcodebuildartifacts" {
  bucket = var.artifacts_bucket_name
}