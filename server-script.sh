# Update package list and install Java, Git, and Maven
sudo apt update
sudo apt install openjdk-8-jdk -y
sudo apt install git -y
sudo apt install maven -y

# Clone the repository if it doesn't exist, otherwise pull the latest changes
if [ -d "/home/ec2-user/addressbook" ]; then
  echo "repo is cloned and exists"
  cd /home/ec2-user/addressbook
  git pull origin b1
else
  echo "repo is not there"
  git clone https://github.com/ramameghana02/addressbook-mvn.git /home/ec2-user/addressbook
  cd /home/ec2-user/addressbook
fi

# Build the project using Maven
mvn package

# Install Docker and start the Docker service
sudo apt install docker.io -y
sudo systemctl start docker
