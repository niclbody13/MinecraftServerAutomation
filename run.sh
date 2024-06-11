#!/bin/bash

# Navigate to the Terraform directory
cd ./terraform || exit

# Apply Terraform configuration
terraform apply -auto-approve

# Get the public IP of the instance
INSTANCE_PUBLIC_IP=$(terraform output -raw instance_public_ip)

# Output the private key to a file
terraform output -raw private_key > ~/Downloads/minecraft-key.pem
chmod 600 ~/Downloads/minecraft-key.pem

# Navigate back to the previous directory
cd - || exit

# Update Ansible inventory
echo "[minecraft_server]" > ./ansible/inventory.ini
echo "${INSTANCE_PUBLIC_IP} ansible_user=ec2-user ansible_ssh_private_key_file=~/Downloads/minecraft-key.pem" >> ./ansible/inventory.ini

# Run Ansible playbook
ansible-playbook -i ./ansible/inventory.ini ./ansible/minecraft.yml
