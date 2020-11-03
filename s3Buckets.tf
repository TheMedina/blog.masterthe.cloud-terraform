#S3 Buckets for AWS CI/CD Pipeline

#This is the s3 bucket that the site will eventually live in
resource "aws_s3_bucket" "mtctestcodebuild" {
  bucket = var.static_web_bucket_name
  acl    = "private"
}

#This will be the S3 bucket that will function as our Artifact Store
resource "aws_s3_bucket" "mtctestcodebuildartifacts" {
  bucket = var.artifacts_bucket_name
}