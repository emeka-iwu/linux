#!/bin/bash

#Enable and start ssh Daemon
systemctl enable sshd && systemctl start sshd 

#Check if key pair already exists
sshkey=$HOME/.ssh/id_ed25519
if [ ! -f "$sshkey" ]; then
    ssh-keygen -t ed25519 -C emeka.iwu -f "$sshkey" -N ""
else
    echo "key pair already exists"
fi

#call ssh-agent
eval "$(ssh-agent -s)"

#Add ssh private key to agent
ssh-add "$sshkey"

#Copy public key to file
cat "$HOME/.ssh/id_ed25519.pub" > "$HOME/pubkey"

#Test connection to Github
ssh -T git@github.com
if [ $? -ne 0 ]; then
    echo "connection not established"
else
    echo "connected to Github"
fi