output "ec2_public_ip" {
  value = aws_instance.ml_server.public_ip
}

output "ecr_uri" {
  value = aws_ecr_repository.repo.repository_url
}

output "s3_bucket" {
  value = aws_s3_bucket.model_bucket.bucket
}
