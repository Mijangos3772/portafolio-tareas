#!/bin/bash

sudo useradd -m jailuser
echo "Asignar passwd a jailuser:"
sudo passwd jailuser

sudo usermod -s /bin/rbash jailuser

sudo mkdir -p /home/ jailuser/bin

sudo cp /bin/ls /home/jailuser/bin/
sudo cp /bin/cat /home/jailuser/bin/

echo "flag{escape_linux_jail}" | sudo tee /home/jailuser/flag.txt
sudo chmod 600 /home/jailuser/flag.txt

sudo chown -R jailuser:jailuser /home/jailuser

echo "setup completo. usa su jailuser"
