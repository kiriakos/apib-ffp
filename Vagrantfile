# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.box_version = config.vm.box_version
  config.vm.hostname = "apib-ffp"
  config.vm.network "public_network"

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
  end

  ## Install APIB Tools
  config.vm.provision "shell", path: "provision/install-systemm.sh"
  config.vm.provision "shell", path: "provision/install-drafter.sh"
  config.vm.provision "shell", path: "provision/install-vim.sh"
  config.vm.provision "shell", path: "provision/install-docker.sh"
  config.vm.provision "shell", path: "provision/install-readme.sh"
  config.vm.provision "shell", path: "provision/install-aglio.sh"

  config.vm.provision "shell", inline: <<-SHELL

    # Install aglio

    # Install Dredd

    # Install Dracov
    # Print Banner
    chmod -x /etc/update-motd.d/*
    cp /vagrant/provision/motd.sh /etc/update-motd.d/10-apib-ffp
    chmod +x /etc/update-motd.d/10-apib-ffp

  SHELL
end
