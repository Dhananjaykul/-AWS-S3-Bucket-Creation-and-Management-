resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = aws_s3_bucket.devops_bucket.id
  policy = data.aws_iam_policy_document.allow_read_only_access.json
}

data "aws_iam_policy_document" "allow_read_only_access" {
  statement {
    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::636389623226:user/Mark_furry"]
    }

    actions = [
      "s3:GetObject",
      "s3:ListBucket",
    ]

    resources = [
      aws_s3_bucket.devops_bucket.arn,
      "${aws_s3_bucket.devops_bucket.arn}/*",
    ]
  }
}