#/bin/sh
PEM=learning_key.pem 
USER=azureuser
ansible-playbook --inventory hosts --private-key $PEM --user $USER \
     --extra-vars=auto_legacy_silent=true \
     prepare.yml