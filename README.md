# glusterfs-pacemakerHA

This vagrant file will create 3 VM. 

client1
client2 
ansible-host

vagrant up --provider virtualbox

Requirements:

Vagrant - 1.8.x
Vagrant plugins - vagrant-libvirt

Ansible: 2.0.x
Virtualbox: latest

.
├── ansible-install.sh
├── bootstrap-node.sh
├── host.sh
├── playbooks
│   ├── ansible.cfg
│   ├── apache.yml
│   ├── inventory
│   ├── mysql.yml
│   ├── ping.yml
│   └── vars.yml
├── README.md
└── Vagrantfile

