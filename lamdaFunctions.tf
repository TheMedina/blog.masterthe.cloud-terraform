#Any Lambda functions stored for this project

#Lambda@Edge function for URI index rewrite
resource "aws_iam_role" "iam_for_lambdaEdge" {
  name = "iam_for_lambdaEdge"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com",
        "Service": "edgelambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": "STSRoleAssume"
    }
  ]
}
EOF
}

resource "aws_lambda_function" "URI_Rewrite_Prod" {
  filename      = "uri_rewrite.zip"
  function_name = "URI_Rewrite_Prod"
  role          = aws_iam_role.iam_for_lambdaEdge.arn
  handler       = "index.handler"
  publish       = var.lambda_publish_new_version

  source_code_hash = filebase64sha256("uri_rewrite.zip")

  runtime = "nodejs12.x"
}

#Terraform Lambda Permission
resource "aws_lambda_permission" "allow_lambda_edge" {
  statement_id  = "AllowGetFromLambdaEdge"
  action        = "lambda:GetFunction"
  function_name = aws_lambda_function.URI_Rewrite_Prod.function_name
  principal     = "edgelambda.amazonaws.com"
//   qualifier     = aws_lambda_alias.test_alias.name
}

#Testing Aliases
// resource "aws_lambda_alias" "test_alias" {
//   name             = "testalias"
//   description      = "a sample description"
//   function_name    = aws_lambda_function.URI_Rewrite_Prod.function_name
//   function_version = "$1"
// }