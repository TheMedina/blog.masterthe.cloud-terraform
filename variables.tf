#Provider information
variable "access_key" {
    description = "AWS Access Key"
}
variable "secret_key" {
    description = "AWS Secret Key"
}
variable "region" {
    description = "AWS Region"
}

#Github Configuration
variable "github_token" {
    description = "Pre-generated OAuth Token from Github"
}
variable "repository_branch" {
    description = "Repository branch to connect to"
}
variable "repository_owner" {
    description = "GitHub repository owner"
}
variable "repository_name" {
    description = "GitHub repository name"
}

#S3 Buckets
variable "static_web_bucket_name" {
    description = "S3 Bucket to deploy to"
}
variable "artifacts_bucket_name" {
    description = "S3 Bucket for storing artifacts"
}

#ACM Wildcard Domains
variable "acm_domain" {
    description = "ACM domain name for wildcard cert"
}

#ACM blog alias
variable "acm_alias" {
    description = "ACM Alias for blog site"
} 

#Origin ID
variable "origin_id" {
    description = "Origin ID"
} 

#Route53 Zone ID
variable "zone_id" {
    description = "Origin ID"
} 

#var.lambda_publish_new_version
variable "lambda_publish_new_version"{
    description = "Would lyou like to publish a new version of your Lambda@Edge Function. Select true for a first time deployment"
}

#Lambda Version
// variable "lambda_version"{
//     description = "Which version of the lambda@edge function would you like to use? If this is your first deployment select 2"
// }