apt-get update
apt-get install x-linux-ai-tool -y
x-linux-ai -i packagegroup-x-linux-ai-demo-cpu
systemctl restart weston-graphical-session.service
