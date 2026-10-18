#!/bin/bash

ACCOUNT_ID=<AWS_ACCOUNT_ID>

REGION=ap-south-1

REPO=mlops-fastapi-repo

aws ecr get-login-password \
--region $REGION \
| docker login \
--username AWS \
--password-stdin \
$ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com

docker build -t mlops-api -f docker/Dockerfile .

docker tag mlops-api:latest \
$ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com/$REPO:latest

docker push \
$ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com/$REPO:latest
``
