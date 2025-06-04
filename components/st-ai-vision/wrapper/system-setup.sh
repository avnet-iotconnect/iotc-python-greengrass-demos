#!/bin/bash

set -e

# For "Inappropriate ioctl for device":
export DEBIAN_FRONTEND=noninteractive

apt update -y
apt install -y x-linux-ai-tool
x-linux-ai -i packagegroup-x-linux-ai-demo-cpu
systemctl restart weston-graphical-session.service
