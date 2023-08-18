# SocialTimeOut

SocialTimeOut is a simple bash script that helps you take a break from social media platforms by temporarily making them inaccessible. By modifying the `/etc/hosts` file, this script provides a way to avoid distractions and focus on your tasks.

## Features

- Temporarily blocks access to popular social media platforms by modifying the `/etc/hosts` file.
- Helps improve productivity and reduce distractions.
- Provides an easy way to toggle social media accessibility on and off.

## Installation

1. Clone this repository:

   ```sh
   git clone https://github.com/yourusername/SocialTimeOut.git
   cd SocialTimeOut
   ```


## Usage
To enable the Social Time Out and block access to social media, run:
```sh
chmod +x start.sh
sudo ./start.sh
```

To disable the Social Time Out and restore access to social media, run:
```sh
chmod +x stop.sh
sudo ./stop.sh
```

Add the URLs you want to blacklist in blacklist.txt
