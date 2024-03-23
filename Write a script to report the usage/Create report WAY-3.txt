Write a script to report the usage of aws in your project   WAY-3
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

set -x  #debug
set -e   #Exit on error
set -o pipefail 

# List S3 Buckets

aws s3 ls

# List EC2 Instances
aws ec2 describe-instances

# List Lambda Functions
aws lambda list-functions

# List IAM Users
aws iam list-users
---------------------------------------------------------------------------------------------------------------


chmod 777 aws_resourse_tracker.sh
./aws_resourse_tracker.sh

OUTPUT:-
===============================================================================================================

AWS Resource Usage Report
-------------------------

S3 Buckets:
2024-03-23 15:30:00 my-bucket-1
2024-03-23 15:31:00 my-bucket-2

EC2 Instances:
{
    "Reservations": [
        {
            "Instances": [
                {
                    "InstanceId": "i-0123456789abcdef0",
                    "InstanceType": "t2.micro",
                    "State": {
                        "Name": "running"
                    },
                    ...
                }
            ]
        }
    ]
}

Lambda Functions:
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

IAM Users:
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



if there is any error then script is not running
