#IAM Roles for this deployment

#AWS CodeBuild IAM role
resource "aws_iam_role" "test_codebuild" {
  name = "test_codebuild"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}