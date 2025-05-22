# 📦 S3 Triggered Lambda Function using Python 3.11

This project demonstrates how to set up an AWS Lambda function that is automatically triggered when an object is uploaded to an S3 bucket. The function reads the uploaded file’s metadata and logs the content type. This use case is common for automation pipelines, event-driven processing, and serverless architecture.

---
![WhatsApp Image 2025-05-22 at 04 56 11_7fb02fdc](https://github.com/user-attachments/assets/ef1f717f-29be-4903-ad56-2cd324a9e54d)

## 🚀 Project Overview

- **Trigger**: S3 Object Creation
- **Runtime**: Python 3.11
- **Purpose**: Log the content type of uploaded objects to S3
- **Tools**: AWS Lambda, S3, CloudWatch Logs, Boto3

---
![WhatsApp Image 2025-05-22 at 04 56 11_0b268b58](https://github.com/user-attachments/assets/9654f414-dc02-410e-bee1-dec4e887baf0)

## 📂 File Structure

```bash
lambda-s3-trigger/
│
├── lambda_function.py          # Lambda source code
├── commands.sh                 # Shell commands to deploy and test
├── trust-policy.json           # IAM trust policy for Lambda execution
├── requirements.txt            # Optional: For local development/testing
├── test_event.json             # Sample test event for local testing
├── cloudwatch-check.sh         # Script to pull recent CloudWatch logs
└── README.md                   # Project documentation


📞 Contact Information

| **Method** | **Details**                  |
|------------|------------------------------|
| Email      | ahmadtahir4235@gmail.com     |
| Phone      | +92 3000511136               |
| LinkedIn   | https://linkedin.com/in/m-ahmadtahir |
