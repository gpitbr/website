#!/bin/bash -e

#  Script to update and install packages basic in instance

# Upadate S.O
sudo yum update -y

# Install repo epel
sudo yum install -y epel-release

# Instalação packages requiremets
sudo yum group install -y "Development Tools"
sudo yum install -y bash_completion curl wget vim net-tools htop ansible \
                    python2-pip python-virtualenv python-devel openssl-devel \
                    libffi-devel augeas-libs python  yum-utils git
