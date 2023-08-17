#!/bin/bash

# Check if the backup file exists
if [ -f "/etc/hosts.backup" ]; then
    # Restore the backup
    sudo cp /etc/hosts.backup /etc/hosts
    echo "Restored the backup"
else
    # Remove the added entries
    sudo sed -i '/www\.facebook\.com/d' /etc/hosts
    sudo sed -i '/www\.instagram\.com/d' /etc/hosts
    sudo sed -i '/www\.pinterest\.com/d' /etc/hosts
    sudo sed -i '/www\.snapchat\.com/d' /etc/hosts
    sudo sed -i '/www\.tiktok\.com/d' /etc/hosts
    sudo sed -i '/www\.reddit\.com/d' /etc/hosts
    sudo sed -i '/www\.tumblr\.com/d' /etc/hosts
    sudo sed -i '/www\.whatsapp\.com/d' /etc/hosts
    sudo sed -i '/www\.wechat\.com/d' /etc/hosts
    sudo sed -i '/www\.viber\.com/d' /etc/hosts
    sudo sed -i '/www\.messenger\.com/d' /etc/hosts
    sudo sed -i '/www\.quora\.com/d' /etc/hosts
    sudo sed -i '/www\.twitch\.tv/d' /etc/hosts
    echo "Removed the added entries"
fi

