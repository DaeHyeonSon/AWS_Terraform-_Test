# S3 버킷 생성
resource "aws_s3_bucket" "bucket1" {
  bucket = "ce16-bucket"  # 생성하고자 하는 S3 버킷 이름
}
