# glusterfs-pacemakerHA

This vagrant file will create 3 VM. 

client1
client2 
ansible-host


Requirements:

Vagrant - 1.8.x
Vagrant plugins - vagrant-hostmanager
                - vagrant-vbguest
Ansible: 2.0.x
Virtualbox: latest
           
Ansible Modules used:
 - pcs_auth.py from https://github.com/styopa/ansible-pacemaker
 - pcs_resource.py from https://github.com/styopa/ansible-pacemaker




