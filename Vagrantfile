# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.hostname = "apib-ffp"
  config.vm.network "public_network" do |net|
    print net.inspect
    print net.methods
  end


  config.vm.post_up_message = <<-POSTUP
    API Blueprint: For Fun and Profit

    Base box up! To run the workshop code do:
    1. 'vagrant ssh' to ssh into the box
    2. ''
  POSTUP


  ## Install APIB Tools
  config.vm.provision "shell", path: "provision/install-drafter.sh"
  config.vm.provision "shell", path: "provision/install-vim.sh"
  config.vm.provision "shell", path: "provision/install-docker.sh"
  config.vm.provision "shell", path: "provision/install-readme.sh"

  config.vm.provision "shell", inline: <<-SHELL

    # Install aglio

    # Install Dredd

    # Install Dracov
    # Print Banner

  SHELL
end
