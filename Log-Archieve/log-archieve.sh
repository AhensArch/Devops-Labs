#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Check if log directory argument is provided
if [ -z "$1" ]; then
    echo "Usage: log-archive <log-directory>"
    exit 1
fi

LOG_DIR="$1"

# Validate that the source directory exists and is a directory
if [ ! -d "$LOG_DIR" ]; then
    echo "Error: Directory '$LOG_DIR' does not exist or is not a valid directory."
    exit 1
fi

# Define archive destination directory
ARCHIVE_BASE_DIR="./archived_logs"
mkdir -p "$ARCHIVE_BASE_DIR"

# Generate timestamped archive name
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_NAME="logs_archive_${TIMESTAMP}.tar.gz"
ARCHIVE_PATH="$ARCHIVE_BASE_DIR/$ARCHIVE_NAME"

# Compress the logs into a tar.gz file
echo "Compressing logs from '$LOG_DIR' into '$ARCHIVE_PATH'..."
# -c: create, -z: gzip, -f: file
# Using -C to change directory so we avoid absolute path structures in the tarball
tar -czf "$ARCHIVE_PATH" -C "$(dirname "$LOG_DIR")" "$(basename "$LOG_DIR")"

# Log the archive action date and time
LOG_RECORD_PATH="$ARCHIVE_BASE_DIR/archive_history.log"
LOG_ENTRY="[$(date '+%Y-%m-%d %H:%M:%S')] Archived '$LOG_DIR' to '$ARCHIVE_PATH'"
echo "$LOG_ENTRY" >> "$LOG_RECORD_PATH"

echo "Success! Archive created at: $ARCHIVE_PATH"