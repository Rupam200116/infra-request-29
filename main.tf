provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "ff" {
  ami           = "ami-0c92e4b557f464536"
  instance_type = "m5.xlarge"
  tags = {
    Project     = "ff"
    ManagedBy   = "terraform"
  }
}

output "public_ip" {
  value = aws_instance.ff.public_ip
}

output "bucket_name" {
  value = aws_s3_bucket.ff.id
}

output "endpoint" {
  value = aws_s3_bucket.ff.website_endpoint
}