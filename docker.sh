sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update --fix-missing
sudo apt install apt-utils

#Install docker
sudo apt install docker-ce -y
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo update-locale LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
echo "%sudo ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
# Add "$USER ALL=(ALL) NOPASSWD: ALL" to /etc/sudoers

sudo apt install awscli -y
sudo timedatectl set-timezone America/New_York

#sudo groupadd docker
#sudo usermod -aG docker $USER #missed
#newgrp docker #missed
#docker run hello-world
#to change the prompt chasnge the file /etc/bash.bashrc according with https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/set-hostname.html

#just in case weneed aws commands
#install AWS-CLI Version 2
sudo apt install zip -y
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
rm awscliv2.zip
 rm -r aws
# create credentials either using aws config or copying the files to ~/.aws
