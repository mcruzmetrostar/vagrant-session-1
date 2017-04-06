# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
# Define VMs with static private IP addresses, vcpu, memory and vagrant-box.
  boxes = [
    { 
      :name => "client2", 
      :box => "Datacom_Centos7.2base",
      :ram => 512,
      :vcpu => 1,
      :ip => "192.168.29.2" 
    },
    { 
      :name => "client1",
      :box => "Datacom_Centos7.2base", 
      :ram => 512,
      :vcpu => 1,
      :ip => "192.168.29.3" 
    },
    { 
      :name => "ansible-host",
      :box => "Datacom_Centos7.3_gui_v2",
      :ram => 1024,
      :vcpu => 1,
      :ip => "192.168.29.4" 
    }
  ]


  # Provision each of the VMs.
  boxes.each do |opts|
    config.vm.define opts[:name] do |config|
#   Only Enable this if you are connecting to Proxy server
#      config.proxy.http     = "http://usernam:password@dnzwgpx2.datacom.co.nz:80"
#      config.proxy.https    = "http://usernam:password@dnzwgpx2.datacom.co.nz:80"
      config.proxy.no_proxy = "localhost,127.0.0.1"
      config.vm.synced_folder ".", "/vagrant", id: "vagrant-root", disabled: true
      config.ssh.insert_key = false
      config.vm.box = opts[:box]
      config.vm.hostname = opts[:name]
      config.vm.provider :virtualbox do |v|
        v.memory = opts[:ram]
        v.cpus = opts[:vcpu]
      end
      config.vm.network :private_network, ip: opts[:ip]
        
      # Provision both VMs using Ansible after the last VM is booted.
      if opts[:name] == "ansible-host"
        config.vm.provision :shell, path: "ansible-install.sh"
        config.vm.provision :shell, path: "host.sh"
      end
      if opts[:name] == "ansible-host" 
        config.vm.provision :file do |file|
        file.source	    = 'playbooks/ping.yml'
        file.destination    = '/home/vagrant/playbooks/ping.yml'
        end
      end
      if opts[:name] == "ansible-host"
        config.vm.provision :file do |file|
        file.source     = 'keys/vagrant'
        file.destination    = '/home/vagrant/playbooks/keys/vagrant'
        end
      end
      if opts[:name] == "ansible-host"
        config.vm.provision :file do |file|
        file.source         = 'playbooks/update_hostname.yml'
        file.destination    = '/home/vagrant/playbooks/update_hostname.yml'
        end
      end
      if opts[:name] == "ansible-host"
        config.vm.provision :file do |file|
        file.source         = 'playbooks/ansible.cfg'
        file.destination    = '/home/vagrant/ansible.cfg'
        end
      end
      if opts[:name] == "ansible-host"
        config.vm.provision :file do |file|
        file.source         = 'playbooks/inventory'
        file.destination    = '/home/vagrant/inventory'
        end
      end
      if opts[:name] == "ansible-host"
        config.vm.provision :file do |file|
        file.source         = 'playbooks/mysql.yml'
        file.destination    = '/home/vagrant/playbooks/mysql.yml'
        end
      end
      if opts[:name] == "ansible-host"
        config.vm.provision :file do |file|
        file.source         = 'playbooks/apache.yml'
        file.destination    = '/home/vagrant/playbooks/apache.yml'
        end
      end
      if opts[:name] == "ansible-host"
        config.vm.provision :file do |file|
        file.source         = 'playbooks/verify-install.yml'
        file.destination    = '/home/vagrant/playbooks/verify-install.yml'  
        end 
      end
      if opts[:name] == "ansible-host"
        config.vm.provision :file do |file|
        file.source         = 'playbooks/vars.yml'
        file.destination    = '/home/vagrant/playbooks/vars.yml'  
        end 
      end
      if opts[:name] == "ansible-host"
        config.vm.provision :file do |file|
        file.source         = 'playbooks/lamp.yml'
        file.destination    = '/home/vagrant/playbooks/lamp.yml'  
        end 
      end
    config.vm.provision :shell, path: "bootstrap-node.sh"
   end    
  end
end
