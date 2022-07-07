resource "aws_s3_bucket" "website_hosting" {
  bucket = var.bucket_name
}

resource "aws_s3_bucket_policy" "website_policy" {
  bucket = aws_s3_bucket.website_hosting.id
  policy = "${file("${path.module}/json/website_hosting_policy.json")}" 
}

resource "aws_s3_bucket_acl" "website_acl" {
  bucket = aws_s3_bucket.website_hosting.bucket
  acl    = "public-read"
}

resource "aws_s3_bucket_website_configuration" "website_config" {
  bucket = aws_s3_bucket.website_hosting.id
  
  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}
