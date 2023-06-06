resource "aws_s3_bucket_public_access_block" "example" {
  bucket                     = aws_s3_bucket.devops_bucket.id
  block_public_acls          = false
  block_public_policy        = false
  ignore_public_acls         = false
  restrict_public_buckets    = false
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.devops_bucket.id
  acl    = "public-read"
}