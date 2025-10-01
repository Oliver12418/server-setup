sudo apt update
sudo apt install nodejs npm git vsftpd -y

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install node
nvm use node
node -v
npm -v

sudo bash -c "sed -i 's/^#*HandleLidSwitch=.*$/HandleLidSwitch=ignore/' /etc/systemd/logind.conf"
sudo bash -c "sed -i 's/^#*HandleLidSwitchDocked=.*$/HandleLidSwitchDocked=ignore/' /etc/systemd/logind.conf"
sudo systemctl restart systemd-logind
