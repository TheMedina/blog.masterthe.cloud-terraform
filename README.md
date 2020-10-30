# AWS CodePipline / CodeBuild Implementation
The code in this repositiory should allow you to seamlessly integrate an AWS CodePipline workflow with an AWS CodeBuild project. 

The goals of this project are as follows:
- Deploy the neccessary infrastrcutre to create a AWS CI/CD pipeline
- Deploy the infrastructure leveraging industry standard IaC (Terraform)
- Have the infrascture configured leveraging best practices 
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