!#/usr/bin/env bash
echo "Setting up new development machine..."
apt-get update && apt-get upgrade -y
apt-get install zsh -y && chsh -s /bin/zsh
apt-get install git -y
apt-get install wget -y
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash && source ~/.nvm/nvm.sh
wget -c https://golang.org/dl/go1.17.2.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.17.2.linux-amd64.tar.gz
apt-get install python3 -y
apt-get install python3-pip -y

nvm install --lts
nvm use --lts
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.zshrc
source ~/.zshrc
npm install -g yarn
mkdir -p ~/github.com 
mkdir -p ~/local $$ mkdir -p ~/local/node && mkdir -p ~/local/go
mkdir -p ~/local/python

echo "Install complete! Versions Installed:"
nvm --version 
npm --version
go version
python3 --version
pip3 --version 
