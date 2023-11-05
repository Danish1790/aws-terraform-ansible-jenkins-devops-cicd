#!/bin/bash
set -xe

cd aws-terraform-ansible-jenkins-devops-cicd/Terraform

sed -i "s/server_name/${SERVER_NAME}/g" backend.tf
export TF_VAR_name=${SERVER_NAME}

terraform init
terraform plan
terraform $TERRAFORM_ACTION -auto-approve

if [ $TERRAFORM_ACTION = "destroy" ]; then
	exit 0
else
	cd ../Ansible
	ansible-playbook -i /opt/ansible/inventory/aws_ec2.yaml apache.yaml 
fi
