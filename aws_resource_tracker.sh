#!/bin/bash

###########################

#Author: Akshay Jalnela
#Date: 31/03/2026
#
#Version: V2
#
#This script will report the AWS resource usage
###########################

#Aws S3
#AWS EC2
#AWS Lamda
#AWS IAM Users

set -e #exit the script if there is an error


#list s3 buckest
echo "Print the list of S3 Buckets"
aws s3 ls

#list EC2 instance
echo "Print the list of EC2 Instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#list lambda
echo "Print list of Lamda Functions"
aws lambda list-functions

#list IAM Users
echo "Print List of IAM Users"
aws iam list-users
