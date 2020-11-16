resource "aws_s3_bucket_policy" "bpolicy" {
  for_each = fileset("${path.module}/policies", "*.json")
  bucket        =  replace(each.value, ".json", "")
  policy = file("${path.module}/policies/${each.value}")
}

