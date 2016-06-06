#!/bin/bash

mkdir .ssh
cp ~/.ssh/id_rsa .ssh/id_rsa
cp ~/.ssh/id_rsa.pub .ssh/id_rsa.pub
touch .ssh/config

echo "# ssh/config
# Git keys
host gitlab.aymericdaurelle.ovh 
     user monaddresse@mail.com
     port 22
     identityfile /root/.ssh/id_rsa" > .ssh/config

vagrant up