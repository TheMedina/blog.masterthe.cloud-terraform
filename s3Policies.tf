#S3 bucket policies

#Bucket polciy for world readable S3 objects
resource "aws_s3_bucket_policy" "webread" {
  bucket = aws_s3_bucket.mtctestcodebuild.id

  policy = <<POLICY
{
  "Id": "bucket_policy_site",
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "1",
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": "${aws_s3_bucket.mtctestcodebuild.arn}/*",
      "Principal": "*"
    }
  ]
}
POLICY
}