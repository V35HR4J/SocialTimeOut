#!/bin/bash

filename="blacklist.txt"
declare -a social_media_urls

while IFS= read -r line; do
    social_media_urls+=("$line")
done < "$filename"

# Check if the backup file exists
if [ -f "/etc/hosts.backup" ]; then
    # Restore the backup
    sudo cp /etc/hosts.backup /etc/hosts
    echo "Restored the backup"
else
    # Remove the added entries
    for url in "${social_media_urls[@]}"; do
        echo "127.0.0.1 $url" | sudo tee -a /etc/hosts > /dev/null
        escaped_pattern=$(echo "$url" | sed 's/\./\\./g')
        sed -i "/$escaped_pattern/d" /etc/hosts
    done
    echo "Removed the added entries"
fi

