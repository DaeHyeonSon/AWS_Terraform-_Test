# S3 버킷의 public read 정책 설정
resource "aws_s3_bucket_policy" "public_read_access" {
  bucket = aws_s3_bucket.bucket1.id  # 생성된 S3 버킷 이름 사용

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": "*",
      "Action": [ "s3:GetObject" ],
      "Resource": [
        "arn:aws:s3:::<my-bucket>",
        "arn:aws:s3:::<my-bucket>/*"
      ]
    }
  ]
}
EOF
}
