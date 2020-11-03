#S3 bucket policies

#Bucket polciy for world readable S3 objects
data "aws_iam_policy_document" "web_distribution" {
  statement {
    sid = "OAI Access"
    actions = ["s3:GetObject"]
    principals {
      type        = "AWS"
      identifiers = ["${aws_cloudfront_origin_access_identity.blog_origin_access_identity.iam_arn}"]
    }
    resources = ["${aws_s3_bucket.mtctestcodebuild.arn}/*",]
  }

  statement {
    sid = "CodeBuild Access"
    actions = ["s3:*"]
    principals {
      type        = "AWS"
      identifiers = ["${aws_codebuild_project.test_codebuild.service_role}"]
    }
    resources = ["${aws_s3_bucket.mtctestcodebuild.arn}/*"]
  }
}

resource "aws_s3_bucket_policy" "web_distribution" {
  bucket = "${aws_s3_bucket.mtctestcodebuild.id}"
  policy = "${data.aws_iam_policy_document.web_distribution.json}"
}

#Bucket polciy for S3 artifact store
resource "aws_s3_bucket_policy" "artifact_policy" {
  bucket = aws_s3_bucket.mtctestcodebuildartifacts.id

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
      "Resource": "${aws_s3_bucket.mtctestcodebuildartifacts.arn}/*",
      "Principal": "*"
    }
  ]
}
POLICY
}