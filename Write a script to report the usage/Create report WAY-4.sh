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

aws ec2 describe-instance | jq '.Reservations[].Instances[].InstanceId'
OUTPUT:-
===============================================================================================================

"rftgyhj56789hn7hgu"

<<<instance id>>>

