#!/bin/bash

# ========= Configuration =========
TARGET_DIR="/var/www/html"  # Local web server root (change if needed)
FILES=("index.html" "style.css")  # Files to deploy
LOG_FILE="deploy.log"

# ========= Start Script =========
echo "Starting deployment..." | tee -a "$LOG_FILE"

# Check for README.md
if [ ! -f "README.md" ]; then
  echo "README.md not found. Deployment aborted." | tee -a "$LOG_FILE"
  exit 1
fi

# Check if target directory exists
if [ ! -d "$TARGET_DIR" ]; then
  echo "Target directory $TARGET_DIR does not exist. Aborting." | tee -a "$LOG_FILE"
  exit 1
fi

# Copy each file
for file in "${FILES[@]}"; do
  if [ -f "$file" ]; then
    echo "Copying $file to $TARGET_DIR" | tee -a "$LOG_FILE"
    cp "$file" "$TARGET_DIR"
  else
    echo "Warning: $file not found in project directory." | tee -a "$LOG_FILE"
  fi
done

echo "Deployment complete. Files are live in $TARGET_DIR." | tee -a "$LOG_FILE"
