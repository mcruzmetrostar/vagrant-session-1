rpm -ivh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-9.noarch.rpm
sudo yum repolist
sudo yum install ansible -y 
sudo yum install telnet -y
sudo yum install git -y
mkdir /home/vagrant/playbooks
chown vagrant:vagrant /home/vagrant/playbooks
mkdir /home/vagrant/playbooks/keys
chown vagrant:vagrant /home/vagrant/playbooks/keys
chmod 755 /home/vagrant/playbooks/keys
chmod 755 /home/vagrant/playbooks/keys/vagrant
sudo yum install lsb-core-noarch -y
rpm -qa | grep atom
if [ $? -eq 1 ]; then 
#  echo "This is the previous output $?	"
  rpm -ivh https://github.com/atom/atom/releases/download/v1.11.1/atom.x86_64.rpm
fi
