#AWS CodeBuild Implementation

#CodeBuild Project #1
resource "aws_codebuild_project" "test_codebuild" {
  name          = "test_codebuild"
  build_timeout = "5"
  service_role  = aws_iam_role.test_codebuild.arn

  artifacts {
    type = "NO_ARTIFACTS"
  }

  environment {
    type         = "LINUX_CONTAINER"
    image        = "aws/codebuild/standard:4.0"
    compute_type = "BUILD_GENERAL1_SMALL"
  }

  source {
    type                = "GITHUB"
    location            = "https://github.com/TheMedina/blog.masterthe.cloud.git"
    git_clone_depth     = 1
    report_build_status = true
  }
}