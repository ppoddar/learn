#/bin/sh
# -----------------------------------------------------
# Deploys the application
# The Docker image will be built from Github
# All local files will be commited
# -----------------------------------------------------
PEM=learning_key.pem 
USER=azureuser
IP=20.190.44.106
IMAGE=learn
GIT_URL=https://github.com/ppoddar/learn.git#main

ssh -i $PEM $USER@$IP << EOFSSH
  docker build -t $IMAGE $GIT_URL
  docker run -p 80:80 $IMAGE
EOFSSH