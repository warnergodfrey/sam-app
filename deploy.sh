#!/bin/bash -e
aws cloudformation deploy \
   --template-file build/serverless-output.yaml \
   --stack-name sam-app \
   --no-fail-on-empty-changeset \
   --capabilities CAPABILITY_IAM