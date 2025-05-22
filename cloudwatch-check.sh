#!/bin/bash

# Check recent logs from CloudWatch Logs for your Lambda function
# Replace <LOG-GROUP-NAME> with your actual Lambda log group name

aws logs describe-log-streams --log-group-name /aws/lambda/s3-event-handler --order-by "LastEventTime" --descending --limit 1 | \
jq -r '.logStreams[0].logStreamName' | \
xargs -I {} aws logs get-log-events --log-group-name /aws/lambda/s3-event-handler --log-stream-name {} --limit 50
