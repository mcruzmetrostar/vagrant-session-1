# BAU Ansible training: Session 1

Multi-Machine Vagrant Environments:
This Vagrantfile will create 3 Centos VM's to simulate Ansible control machine and 2 target hosts. 

client1 - No GUI
client2 - No GUI
ansible-host - With GUI and ansible core installed


## Requirements:

Internet connection is a must!

Vagrant - 1.8.x
Vagrant plugins - vagrant-proxyconf - needed if you are running behind proxy

Ansible: 2.0.x
Virtualbox: latest

## Scripts included to this repository are the following:
- bootstrap-node.sh - this file enables Centos repository (of my choice: EPEL and ELREPO). Add /etc/hosts file entry
- ansible-install.sh - this file install ansible core to the target ansible-host vm. Creates folder for playbooks. If you need to add packages you can manipulate this file for your own purpose.

## Playbooks files:
- ping.yml - a sample playbook to check if all vms are reachable from Ansible-host
- apache.yml - a sample playbook that will install apache and configure firewalld to allow port 80 traffic
- mysql.yml - a sample playbook that will install mysql and configure firewalld to allow port 3306 traffic
- verify-install.yml - a sample playbook to verify if apache and mysql are installed

## Other files included:
- ansible.cfg
- inventory

## Connecting the dots:


