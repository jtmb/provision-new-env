git clone https://github.com/skeeto/endlessh.git
cd endlessh && make
sudo mv endlessh /usr/local/bin/
sudo cp util/endlessh.service /etc/systemd/system/
sudo systemctl enable endlessh
sudo mkdir -p /etc/endlessh/
cd /etc/endlessh/
rm config
touch config
sudo echo 'Port 22' >> config
sudo systemctl start endlessh
sudo netstat -tulpn | grep endlessh