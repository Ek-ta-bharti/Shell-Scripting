Write a script to report the usage of aws in your project  WAY-1
EXAMPLE

vim aws_resourse_tracker.sh

---------------------------------------------------------------------------------------------------------------
#!/bin/bash

##########################################################
# Author: Ekta
# Date: 23-03-24
#version: v1
#
# This script will report the Aws resourse usage

# Description:
# This script provides a basic template for documenting
# Bash scripts. It includes details such as author name,
# date of creation, and version number. Additionally,
# it outlines sections for providing a description of the
# script's purpose, pre-requisites, usage instructions,
# and any other relevant information.
#
# Note: This is a template and should be customized
# according to the specific requirements of each script.

##########################################################

#AWS S3
#AWS EC2 
#AWS Lambda
#AWS IAM Users

#List s3 buckets
aws s3 ls

#List ec2 Instances
aws ec2 describe-instsnces

#List lambda
aws lambda list-functions

#List IAM users
aws iam list-users

---------------------------------------------------------------------------------------------------------------

chmod 777 aws_resourse_tracker.sh
./aws_resourse_tracker.sh


output=====


2024-03-23 15:30:00 my-bucket-1
2024-03-23 15:31:00 my-bucket-2

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







