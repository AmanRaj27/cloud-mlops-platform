import boto3

BUCKET_NAME = "replace-with-your-bucket"

s3 = boto3.client("s3")

s3.upload_file(
    "model/model.pkl",
    BUCKET_NAME,
    "model.pkl"
)

print("Upload Successful")
