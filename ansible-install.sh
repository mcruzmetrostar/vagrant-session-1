rpm -ivh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-9.noarch.rpm
sudo yum repolist
sudo yum install ansible -y 
sudo yum install telnet -y
#sudo yum -y groups install "GNOME Desktop" 
mkdir /home/vagrant/playbooks
chown vagrant:vagrant /home/vagrant/playbooks
cat >> /etc/ansible/hosts <<-EOL
[client2]
192.168.29.2
[client1]
192.168.29.3
