#!/bin/sh
# --------------------------------------------------------
# Connects to the VM in Azure cloud
# The PEM file and IP address of the VM is known a priori.
# -------------------------------------------------------
PEM=learning_key.pem 
IP=20.190.44.106
USER=azureuser
chmod 400 $PEM
ssh -i $PEM $USER@$IP