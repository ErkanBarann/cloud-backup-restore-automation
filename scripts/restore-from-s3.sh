#!/bin/bash
# Restore backup from a specific date

BUCKET_NAME="my-backup-bucket"
RESTORE_DATE="2024-05-01"
DEST_DIR="/var/www/html"
SRC_PATH="s3://${BUCKET_NAME}/website/${RESTORE_DATE}/"

aws s3 sync "${SRC_PATH}" "${DEST_DIR}" --delete