#!/bin/bash

# Step 1: Create S3 bucket
aws s3api create-bucket --bucket your-bucket-name --region us-east-1 --create-bucket-configuration LocationConstraint=us-east-1

# Step 2: Create IAM Role for Lambda
aws iam create-role --role-name lambda-s3-execution-role --assume-role-policy-document file://trust-policy.json

# Step 3: Attach AWSLambdaExecute policy
aws iam attach-role-policy --role-name lambda-s3-execution-role --policy-arn arn:aws:iam::aws:policy/AWSLambdaExecute

# Step 4: Zip and upload Lambda code
zip function.zip lambda_function.py
aws lambda create-function \
  --function-name s3-event-handler \
  --runtime python3.11 \
  --role arn:aws:iam::<ACCOUNT_ID>:role/lambda-s3-execution-role \
  --handler lambda_function.lambda_handler \
  --zip-file fileb://function.zip
