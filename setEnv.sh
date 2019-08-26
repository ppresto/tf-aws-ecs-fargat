#!/bin/bash

# Set Region in tf alias
export PROJECT="ppresto-ecs"
alias tf='DATE=$(date +%m%d%Y-%H%M); terraform plan -var "name_prefix=${PROJECT}" -out ./.terraform/tfplan.$DATE && terraform apply ./.terraform/tfplan.$DATE'
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'
alias tfd='terraform destroy -var "name_prefix=${PROJECT}" -auto-approve'
