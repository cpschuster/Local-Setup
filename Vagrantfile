# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/zesty64"

  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
    v.cpus = 4
    v.gui = true
  end

  config.vm.provision "shell",
    inline: "apt-get install python -y"

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "provisioning/playbook.yml"
  end
end
