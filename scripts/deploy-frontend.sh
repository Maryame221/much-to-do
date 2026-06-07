#!/bin/bash

echo "Deploying frontend to S3..."

aws s3 sync Client/dist s3://$S3_BUCKET_NAME --delete

echo "Frontend deployment complete"