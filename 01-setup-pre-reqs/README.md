# Step 1 Setup Pre-reqs
Setting up an Azure Arc Homelab environment

WSL2
Ubunutu 22.04
Configure Git
Create user and ansible key
Add key to github
Setup SSH Agent and add keys
Clone Repo


# setup ansible
sudo apt install ansible

ssh-copy-id -i ~/.ssh/todd.pub hal@192.168.1.143
ssh-copy-id -i ~/.ssh/todd.pub hal@192.168.1.144
ssh-copy-id -i ~/.ssh/todd.pub hal@192.168.1.145
ssh-copy-id -i ~/.ssh/todd.pub hal@192.168.1.146

ssh-copy-id -i ~/.ssh/ansible.pub hal@192.168.1.143


 test login
 ssh hal@192.168.1.143
 ssh hal@192.168.1.144
 ssh hal@192.168.1.145
 ssh hal@192.168.1.146

 ## Test Ansible
 create inventory file
 

# Setup kubernetes tools
