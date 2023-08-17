#!/bin/bash

# Create a backup of /etc/hosts
sudo cp /etc/hosts /etc/hosts.backup

# List of social media URLs
social_media_urls=(
    "www.facebook.com"
    "www.instagram.com"
    "www.pinterest.com"
    "www.snapchat.com"
    "www.tiktok.com"
    "www.reddit.com"
    "www.tumblr.com"
    "www.whatsapp.com"
    "www.wechat.com"
    "www.viber.com"
    "www.messenger.com"
    "www.quora.com"
    "www.reddit.com"
    "www.twitch.tv"
)

# Append the URLs to /etc/hosts
for url in "${social_media_urls[@]}"; do
    echo "127.0.0.1 $url" | sudo tee -a /etc/hosts > /dev/null
done

echo "Entries added to /etc/hosts"
