# 새롭게 index.html 파일을 업로드
resource "aws_s3_object" "index" {
  bucket        = aws_s3_bucket.bucket1.id  # 생성된 S3 버킷 이름 사용
  key           = "index.html"
  source        = "index.html"
  content_type  = "text/html"
  etag          = filemd5("index.html")  # 파일의 변경 여부를 확인하여 항상 업데이트
}

# 새롭게 main.html 파일을 업로드
resource "aws_s3_object" "main" {
  bucket        = aws_s3_bucket.bucket1.id  # 생성된 S3 버킷 이름 사용
  key           = "main.html"
  source        = "main.html"
  content_type  = "text/html"
}
