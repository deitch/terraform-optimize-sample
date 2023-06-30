resource "aws_s3_bucket" "bucket" {
  for_each = toset(["one", "two", "three"])
  bucket   = "bucket-${var.name}-${each.key}"
}

resource "aws_s3_object" "object1" {
  for_each = aws_s3_bucket.bucket
  bucket   = each.value.id
  key      = "object1"
  content  = "Lots of unique information for my bucket"
}

resource "aws_s3_object" "object2" {
  for_each = aws_s3_bucket.bucket
  bucket   = each.value.id
  key      = "object2"
  content  = "Lots of unique information for my bucket"
}
