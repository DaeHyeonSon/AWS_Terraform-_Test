# S3 버킷의 CORS 설정 추가
resource "aws_s3_bucket_cors_configuration" "bucket1_cors" {
  bucket = aws_s3_bucket.bucket1.id

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["GET", "POST", "PUT"]
    allowed_origins = ["*"]
    expose_headers  = []
  }
}
