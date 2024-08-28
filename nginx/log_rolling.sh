#!/bin/bash

cd "$(dirname "$0")"

# Get the current date in YYYY-MM-DD format
current_date=$(date +"%Y-%m-%d")

# Define log file paths
error_log="./log/error.log"
access_log="./log/user_access.log"

# Define new log file names with date
new_error_log="./log/${current_date}_error.log"
new_access_log="./log/${current_date}_access.log"

# Rename the error log
if [ -f "$error_log" ]; then
    mv "$error_log" "$new_error_log"
    echo "Renamed $error_log to $new_error_log"
else
    echo "$error_log does not exist."
fi

# Rename the access log
if [ -f "$access_log" ]; then
    mv "$access_log" "$new_access_log"
    echo "Renamed $access_log to $new_access_log"
else
    echo "$access_log does not exist."
fi

# Restart the nginx service using Docker Compose
docker compose restart nginx
