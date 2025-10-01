sudo apt update
sudo apt install nodejs npm git vsftpd -y

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
nvm install node
nvm use node
node -v
npm -v
