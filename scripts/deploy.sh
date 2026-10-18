#!/bin/bash

docker pull IMAGE_URI

docker stop mlops-api || true

docker rm mlops-api || true

docker run -d \
-p 8000:8000 \
--name mlops-api \
IMAGE_URI
