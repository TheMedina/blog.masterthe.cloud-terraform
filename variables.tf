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