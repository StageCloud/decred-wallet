#!/bin/bash

#install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash

# create Golang directories and add envvars
mkdir -p ~/go/src; mkdir ~/go/bin
echo 'export GOPATH=/home/ubuntu/go' >> ~/.bashrc
echo 'export PATH=$GOPATH/bin:$PATH:/usr/local/go/bin' >> ~/.bashrc    

. ~/.bashrc

# install glide
curl https://glide.sh/get | sh

# compile dcrd
git clone https://github.com/decred/dcrd $GOPATH/src/github.com/decred/dcrd
cd $GOPATH/src/github.com/decred/dcrd
glide install
go install $(glide nv)
go build
cp dcrd $GOPATH/bin
cd



nvm install v0.10.40
nvm use v0.10.40

git clone https://github.com/decred/insight-api
cd insight-api; npm install; cd

git clone https://github.com/decred/bitcore-wallet-service
cd bitcore-wallet-service; npm install; cd


