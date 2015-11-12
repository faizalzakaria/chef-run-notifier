# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.berkshelf.enabled    = true
  config.omnibus.chef_version = :latest
  config.vm.box               = "ubuntu/trusty64"

  config.vm.define :test do |int_config|
	int_config.vm.provision :chef_solo do |chef|
	  
	end
  end

end
