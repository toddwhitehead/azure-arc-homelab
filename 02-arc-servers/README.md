# azure-arc-homelab
Setting up an Azure Arc Homelab environment

https://learn.microsoft.com/en-us/azure/azure-arc/servers/onboard-ansible-playbooks

## Pre-reqs
https://learn.microsoft.com/en-us/azure/azure-arc/servers/prerequisites

## Connect to Azure

## Register Providers
az account set --subscription "{Your Subscription Name}"

az provider register --namespace 'Microsoft.HybridCompute'
az provider register --namespace 'Microsoft.GuestConfiguration'
az provider register --namespace 'Microsoft.HybridConnectivity'


az provider show --namespace 'Microsoft.GuestConfiguration' -o table

## Create service princpal
https://learn.microsoft.com/en-us/azure/azure-arc/servers/onboard-service-principal#create-a-service-principal-for-onboarding-at-scale




# Create a service principal for a resource group using a preferred name and role

https://learn.microsoft.com/en-us/cli/azure/create-an-azure-service-principal-azure-cli

az ad sp create-for-rbac --name AzureArcManagement \
                         --role "Azure Connected Machine Onboarding" \
                         --scopes /subscriptions/814b9ae6-fcc4-4c41-83b6-345cfb7ffc7b

{
  "appId": "ff0967aa-f42c-4ffe-b57b-fee6a0996546",
  "displayName": "AzureArcManagement",
  "password": "6KY8Q~XLAA-7bbqab1a8Oeepl21DZ8N.fbLTscVo",
  "tenant": "58542619-9223-44d3-807c-ca7f7cc60d68"
}

# create resource group
 az group create --name 'hal-arc-infra' --location australiaeast


# test ansible inventory
ansible -i hosts -m ping all

# run the arc playbook
ansible-playbook -i hosts.ini arc-server-onboard-playbook.yml --ask-become-pass




