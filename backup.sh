#!/bin/bash
# Backup script for Cloud storage (AWS S3 example)
# Define the directory and S3 bucket
DIRECTORY="/path/to/backup"
BUCKET="s3://your-s3-bucket-name"

# Create a timestamp for the backup file
TIMESTAMP=$(date +"%F")
BACKUP_FILE="backup-$TIMESTAMP.tar.gz"

# Tar the directory
tar -czf $BACKUP_FILE $DIRECTORY

# Upload the backup to S3
aws s3 cp $BACKUP_FILE $BUCKET

# Clean up the local backup file
rm $BACKUP_FILE

echo "Backup completed and uploaded to $BUCKET"
