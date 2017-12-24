# Local Docker installation 

# Step 1 - Set up the repository for Docker CE

# Install packages to allow apt to use a repository over HTTPS:
sudo apt-get install     apt-transport-https     ca-certificates     curl     software-properties-common

# Add Docker’s official GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Verify that the key fingerprint is 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88
sudo apt-key fingerprint 0EBFCD88

# Use the following command to set up the stable repository.
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Step 2 - Install Docker CE

# Update the apt package index.
sudo apt-get update

# Install the latest version of Docker CE
sudo apt-get install docker-ce

## Install a specific version of Docker 
# sudo apt-get install docker-ce=<VERSION>

# Step 3 - Verify that Docker CE is installed correctly by running the hello-world image.
sudo docker run hello-world




