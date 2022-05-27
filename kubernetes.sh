#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Certs
brew install mkcert nss
mkcert -install
echo 'export NODE_EXTRA_CA_CERTS="$(mkcert -CAROOT)/rootCA.pem"' >> ~/.zshrc.local

# docker
brew install docker-completion docker-compose-completion

# Minikube
brew install kubectl kustomize hyperkit docker-machine-driver-hyperkit
brew install minikube
sudo chown root:wheel /usr/local/opt/docker-machine-driver-hyperkit/bin/docker-machine-driver-hyperkit
sudo chmod u+s /usr/local/opt/docker-machine-driver-hyperkit/bin/docker-machine-driver-hyperkit
minikube config set vm-driver hyperkit
minikube config set memory 4096
minikube config set cpus 2
minikube start

# addons
minikube addons enable ingress