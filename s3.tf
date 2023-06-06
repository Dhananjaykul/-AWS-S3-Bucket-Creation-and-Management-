resource "aws_s3_bucket" "devops_bucket" {
  bucket = "devopsbucketday67"

  versioning {
    enabled = true
  }
}