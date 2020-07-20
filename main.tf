provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}


resource "aws_s3_bucket" "aws_s3_bucket_nuxt_website" {
  acl    = "public-read"
  bucket = "s3-nuxt-website.com"

  website {
    index_document = "index.html"
  }
}

output "url" {
  value = "http://${aws_s3_bucket.aws_s3_bucket_nuxt_website.bucket}.s3-website.${var.region}.amazonaws.com"
}

resource "aws_appsync_graphql_api" "aws_appsync_graphql_api_nuxt" {
  authentication_type = "API_KEY"
  name                = "AppSync GraphQL API"
}