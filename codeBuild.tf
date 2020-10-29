#Production CodeBuild deployment
resource "aws_codebuild_project" "mtcCodeBuild" {
  name          = "mtcCodeBuild"
  description   = "MasterTheCloudCodeBuild"
  build_timeout = "5"
  service_role  = "${aws_iam_role.websitebuild.arn}"

  artifacts {
    type = "NO_ARTIFACTS"
  }

  environment {
    type         = "LINUX_CONTAINER"
    image        = "aws/codebuild/ruby:latest"
    compute_type = "BUILD_GENERAL1_SMALL"

    environment_variable {
      name  = "GH_TOKEN"
      value = "SOME_VALUE1"
    }

    environment_variable {
      name  = "SOME_KEY2"
      value = "SOME_VALUE2"
      type  = "PARAMETER_STORE"
    }
  }

  logs_config {
    cloudwatch_logs {
      group_name  = "log-group"
      stream_name = "log-stream"
    }

    s3_logs {
      status   = "ENABLED"
      location = "${aws_s3_bucket.example.id}/build-log"
    }
  }

  source {
    type            = "GITHUB"
    location        = "https://github.com/mitchellh/packer.git"
    git_clone_depth = 1

    git_submodules_config {
      fetch_submodules = true
    }
  }

  source_version = "master"

  vpc_config {
    vpc_id = aws_vpc.example.id

    subnets = [
      aws_subnet.example1.id,
      aws_subnet.example2.id,
    ]

    security_group_ids = [
      aws_security_group.example1.id,
      aws_security_group.example2.id,
    ]
  }

  tags = {
    Environment = "Test"
  }
}