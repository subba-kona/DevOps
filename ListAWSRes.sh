!#bin/bash

echo "list s3  buckets"
aws s3 ls

echo "list ec2 instances"

aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

echo "list iam  users"
aws iam list-users