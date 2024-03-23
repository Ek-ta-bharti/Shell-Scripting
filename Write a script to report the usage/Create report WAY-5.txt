Write a script to report the usage of aws in your project   WAY-4
EXAMPLE

vim aws_resourse_tracker.sh

---------------------------------------------------------------------------------------------------------------
#!/bin/bash

##########################################################
# Author: Ekta
# Date: 2024-03-23
# Version: v1
#
# Description:
# This script reports the AWS resource usage for the project.
# It provides information about S3 buckets, EC2 instances,
# Lambda functions, and IAM users associated with the AWS account.
#
# Pre-requisites:
# - AWS CLI configured with appropriate permissions.
#
# Usage:
# ./aws_usage_report.sh
#
# Note: Ensure AWS credentials are properly configured
# either through environment variables or AWS CLI configuration.
##########################################################

echo "AWS Resource Usage Report"
echo "-------------------------"

set -e   # Exit on error
set -o pipefail 

# List S3 Buckets
echo "Print list of S3 buckets"
aws s3 ls

# List EC2 Instances
echo "Print list of EC2 instances"
aws ec2 describe-instances | jq -r '.Reservations[].Instances[].InstanceId'

# List Lambda Functions
echo "Print list of Lambda functions"
aws lambda list-functions

# List IAM Users
echo "Print list of IAM users"
aws iam list-users

---------------------------------------------------------------------------------------------------------------

./aws_resourse_tracker.sh
OUTPUT:-
===============================================================================================================

AWS Resource Usage Report
-------------------------
Print list of S3 buckets
2022-03-23 12:00:00 my-bucket-1
2022-03-23 12:01:00 my-bucket-2

Print list of EC2 instances
i-0123456789abcdef0
i-abcdef0123456789

Print list of Lambda functions
{
    "Functions": [
        {
            "FunctionName": "my-function-1",
            "Runtime": "nodejs14.x",
            "MemorySize": 128,
            ...
        },
        {
            "FunctionName": "my-function-2",
            "Runtime": "python3.8",
            "MemorySize": 256,
            ...
        }
    ]
}

Print list of IAM users
{
    "Users": [
        {
            "UserName": "user1",
            "CreateDate": "2024-03-23T12:00:00Z",
            ...
        },
        {
            "UserName": "user2",
            "CreateDate": "2024-03-23T12:01:00Z",
            ...
        }
    ]
}
