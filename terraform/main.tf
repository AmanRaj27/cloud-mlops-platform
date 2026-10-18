resource "aws_s3_bucket" "model_bucket" {
  bucket = var.bucket_name
}

resource "aws_ecr_repository" "repo" {
  name = "mlops-fastapi-repo"
}

resource "aws_instance" "ml_server" {

  ami           = "ami-03f4878755434977f"
  instance_type = var.instance_type

  user_data = file("${path.module}/userdata.sh")

  tags = {
    Name = "mlops-server"
  }
}
