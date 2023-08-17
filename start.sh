#!/bin/bash

# Create a backup of /etc/hosts
sudo cp /etc/hosts /etc/hosts.backup


filename="blacklist.txt"
declare -a social_media_urls

while IFS= read -r line; do
    social_media_urls+=("$line")
done < "$filename"


# Append the URLs to /etc/hosts
for url in "${social_media_urls[@]}"; do
    echo "127.0.0.1 $url" | sudo tee -a /etc/hosts > /dev/null
done

echo "Entries added to /etc/hosts"
