
# Step 1 - Manage Docker as a non-root user
# The docker daemon binds to a Unix socket instead of a TCP port. By default that Unix socket is owned by the user root and other users can only access it using sudo. The docker daemon always runs as the root user.

# To create the docker group and add your user
sudo groupadd docker

# Add your user to the docker group.
sudo usermod -aG docker $USER

# Inform user to log out and log back in so that your group membership is re-evaluated.
echo "1. Log out and log back in so that your group membership is re-evaluated" 
echo "2. Once you log back in , verify that you can run docker commands without sudo"
echo "3. Try following command: docker run hello-world"
