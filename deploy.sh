#/bin/sh
PEM=learning_key.pem 
USER=azureuser
IP=20.190.44.106
IMAGE=learn
GIT_URL=http://github.com/ppoddar/learn.git
ssh -i $PEM $USER@$IP << EOFSSH
  docker build -t $IMAGE $GIT_URL
  docker run -p80:80 $IMAGE
EOFSSH