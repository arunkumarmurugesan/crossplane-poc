resource "aws_s3_bucket" "paas-cp" {
bucket = var.Bucket
force_destroy = var.Forcedestroy
tags = {
    Name        = var.Bucket
    Environment = var.env
    }
}
resource "aws_s3_bucket_acl" "acl-test" {
    bucket = aws_s3_bucket.paas-cp.id
    acl    = var.acl
}

resource "aws_s3_bucket_versioning" "versioning_test" {
  bucket = aws_s3_bucket.paas-cp.id
  versioning_configuration {
    status = var.VersioningConfiguration
  }
}