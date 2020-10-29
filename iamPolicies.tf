// #IAM Role Policies for AWS CodeBuild and CodePipeline
// resource "aws_iam_role_policy" "example" {
//   role = "${aws_iam_role.example.name}"

//   policy = <<POLICY
// {
//   "Version": "2012-10-17",
//   "Statement": [
//     {
//       "Effect": "Allow",
//       "Resource": [
//         "*"
//       ],
//       "Action": [
//         "logs:CreateLogGroup",
//         "logs:CreateLogStream",
//         "logs:PutLogEvents"
//       ]
//     },
//     {
//       "Effect": "Allow",
//       "Action": [
//         "ec2:CreateNetworkInterface",
//         "ec2:DescribeDhcpOptions",
//         "ec2:DescribeNetworkInterfaces",
//         "ec2:DeleteNetworkInterface",
//         "ec2:DescribeSubnets",
//         "ec2:DescribeSecurityGroups",
//         "ec2:DescribeVpcs"
//       ],
//       "Resource": "*"
//     },
//     {
//       "Effect": "Allow",
//       "Action": [
//         "s3:*"
//       ],
//       "Resource": [
//         "${aws_s3_bucket.example.arn}",
//         "${aws_s3_bucket.example.arn}/*"
//       ]
//     }
//   ]
// }
// POLICY
// }