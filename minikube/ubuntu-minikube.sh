# You can can setup manually or automatically through the script ( first try manually follow the below 4 steps to setup minikube )

# Prerequisites to setup Minikube
# 2 cpus,  2 GB free memory,  20 GB free dick space, Docker installation

# First create ubuntu Instance with above requirements and allo All Traffic in SG


# 1. Update Ubuntu server:

sudo apt update -y     #  it's give the list of packages that need to upgrade
sudo apt upgrade -y      # packages updated 

# 2. Install Docker:

sudo apt install curl wget apt-transport-https -y         # installing curl and wget
sudo curl -fsSL https://get.docker.com -o get-docker.sh      # installing docker
sudo sh get-docker.sh       # executing docker

# 3. Install Minikube :

sudo curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64         # installing minikube
sudo mv minikube-linux-amd64 /usr/local/bin/minikube       # moving minikube to /usr/local/bin/
sudo chmod +x /usr/local/bin/minikube             # giving executing permissions
sudo minikube version         # version checking

#4. Install kubectl :

sudo curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"            # installing kubectl
sudo curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"              # encrypting 
sudo echo "$(cat kubectl.sha256) kubectl" | sha256sum --check     
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl           # giving execute permissions
sudo minikube start --driver=docker --force            # start the minikube service
minikube status          # check the status
