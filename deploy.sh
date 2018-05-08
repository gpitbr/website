#!/bin/bash
ENV=$1

if [ -z "$ENV" ]; then
    echo "Favor informar qual nuvem deseja realizar o deploy: "
    echo ""
    echo "Usage: "
    echo ""
    echo " AWS                  $0  aws" #prod ~/.ssh/id_rsa
    echo ""
    echo " GCP                  $0  gcp" #prod ~/.ssh/id_rsa 
    echo ""
    exit 1
fi

ansible-playbook ansible/website.yml -l $ENV  -vvv #--extras-vars="ambiente=$ENV
# ansible-playbook -i ansible/inventories/${PROVIDER}/${ENV}/hosts ansible/site.yml
