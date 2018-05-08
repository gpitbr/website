#!/bin/bash
PLAYBOOK_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" > /dev/null && pwd )"
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

ansible-playbook $PLAYBOOK_DIR/ansible/website.yml -l $ENV  -vvv #--extras-vars="ambiente=$ENV
# ansible-playbook -i ansible/inventories/${PROVIDER}/${ENV}/hosts ansible/site.yml
