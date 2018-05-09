#!/bin/bash
#-------------------------------------------------------------------------
# Descrição: Automatiza o deploy do website gpit.com.br em clouds AWS/GCP
#-------------------------------------------------------------------------
# Histórico:
#
# Versão 1:
# Data: 08/05/2018
#--------------------------------------------------------------------------
#Licença: GNU GPL 3 ou superior
#
#--------------------------------------------------------------------------
#clear

PLAYBOOK_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" > /dev/null && pwd )"
ENV=$1

if [ -z "$ENV" ]; then
    echo "Please enter the parameter for the environment:"
    echo ""
    echo "Usage: "
    echo ""
    echo " AWS                  $0  aws"
    echo ""
    echo " GCP                  $0  gcp" 
    echo ""
    exit 1
fi

ansible-playbook $PLAYBOOK_DIR/ansible/website.yml -l $ENV  -vvv