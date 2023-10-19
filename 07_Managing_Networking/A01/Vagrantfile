# -*- mode: ruby -*-
# vi: set ft=ruby :

#Place Vagrantfile in the directory you run vagrant from.

#setting for the rhel VM
Vagrant.configure("2") do |config|
  #config.vm.box = "base"

  config.vm.define "rhel" do |rhel|
    rhel.vm.provider "virtualbox" do |vb_rhel|
      vb_rhel.memory = "2048"
      vb_rhel.cpus = "2"
    end

    rhel.vm.box = "generic/rhel9"
    rhel.vm.hostname = "rhel"
	  rhel.vm.network "private_network", ip: "192.168.56.101"

  end

#settings for the alma VM 
  config.vm.define "alma" do |alma|
	alma.vm.provider "virtualbox" do |vb_alma|
	  vb_alma.memory = "2048"
	  vb_alma.cpus = "2"
	end
	
	alma.vm.box = "almalinux/9"
    alma.vm.hostname = "alma"
	  alma.vm.network "private_network", ip: "192.168.56.102"
	
  end
  
end