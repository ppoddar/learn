#!/bin/sh
# -----------------------------------------
PEM=learning_key.pem 
IP=20.190.44.106
USER=azureuser
chmod 400 $PEM
ssh -i $PEM $USER@$IP