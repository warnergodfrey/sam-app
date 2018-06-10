#!/bin/bash -e
bucket_name=godfrey-io-sam-hello-world
aws s3 mb s3://$bucket_name --region ap-southeast-2 || true
mkdir -p build
sam package \
   --template-file template.yaml \
   --output-template-file build/serverless-output.yaml \
   --s3-bucket $bucket_name
