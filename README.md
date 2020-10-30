# AWS CodePipline / CodeBuild Implementation
The code in this repositiory should allow you to seamlessly integrate an AWS CodePipline workflow with an AWS CodeBuild project. 

The goals of this project are as follows:
- Deploy the neccessary infrastrcutre to create an AWS CI/CD pipeline
- Deploy the infrastructure leveraging industry standard IaC (Terraform)
- Have the infrascture configured leveraging best practices (Both AWS and Terraform)
- Facilate an automatic AWS CodeBuild project when a commit is detected into a designated branch

## Architecture Diagram
[Insert Diagram Here] Coming Soon

## Deployed Resources

This Terraform project will deploy the following resources:
- An AWS CodeBuild Project x1
- An AWS CodePipeline with two stages (Source and Build) x1
- S3 Buckets (Static and Artifacts) x2
- IAM Roles (One for AWS CodeBuild and one for CodePipeline) x2
- IAM Policies (One for AWS CodeBuild and one for CodePipeline) x2
- S3 Bucket Policies (One for each S3 bucket) x2

## Terraform Modules

## Notes

## Todo List
- Lock down S3 Artifact Store bucket polcies
- Add a CloudFront Distribution
- Make buckets private and only allow signed URLs via CloudFront