#!/bin/bash
# Backup a directory to S3 with timestamp

SOURCE_DIR="/var/www/html"
BUCKET_NAME="my-backup-bucket"
DATE=$(date +%F)
DEST_PATH="s3://${BUCKET_NAME}/website/${DATE}/"

aws s3 sync "${SOURCE_DIR}" "${DEST_PATH}" --delete