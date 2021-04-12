#!/bin/bash

DATE=$(date +%H-%M-%S)

DB_HOST=$1
DB_PASS=$2
DB_NAME=$3
AWS_SECRET=$4
BUCKET_NAME=$5

mysqldump -h $DB_HOST -u root -p$DB_PASS $DB_NAME > /tmp/db_$DATE.sql && \
export AWS_ACCESS_KEY_ID=AKIAQWZT3FS2AVDUBMXF && \
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET && \
#export AWS_DEFAULT_REGION=us-west-2
aws s3 cp /tmp/db_$DATE.sql s3://$BUCKET_NAME