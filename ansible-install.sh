rpm -ivh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-9.noarch.rpm
sudo yum repolist
sudo yum install ansible -y 

cat >> /etc/ansible/hosts <<-EOL
[client2]
192.168.29.2
[client1]
192.168.29.3
