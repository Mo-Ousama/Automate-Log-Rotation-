#!/bin/bash

LOG_DIR="/var/log/custom_app"
BACKUP_DIR="/var/log/custom_app_backup"
DAYS_TO_KEEP=7

mkdir -p $BACKUP_DIR

# Compress old records
find $LOG_DIR -name "*.log" -mtime +$DAYS_TO_KEEP -exec gzip {} \;
# Move compressed records to backup folder
find $LOG_DIR -name "*.gz" -exec mv {} $BACKUP_DIR \;

# Delete records older than 7 days
find $BACKUP_DIR -name "*.gz" -mtime +$DAYS_TO_KEEP -exec rm -f {} \;

echo "✅ Log rotation completed."
