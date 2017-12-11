# -*- mode: ruby -*-
# vi: set ft=ruby :

required_plugins = %w( vagrant-omnibus vagrant-berkshelf vagrant-chef-zero )
required_plugins.each do |plugin|
    exec "vagrant plugin install #{plugin};vagrant #{ARGV.join(" ")}" unless Vagrant.has_plugin? plugin || ARGV[0] == 'plugin'
end

VAGRANTFILE_API_VERSION = "2"
Vagrant.require_version ">= 1.5.0"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "bento/ubuntu-14.04"
  config.vm.hostname = "run-notifier"

  # Use vagrant-omnibus to install chef on the VM
  config.omnibus.chef_version = '12.7.2'

  # Use vagrant-berkshelf for cookbook management
  config.berkshelf.enabled = true

  # All services will be available under this local IP
  config.vm.network :private_network, ip: "192.168.254.10"

  # Improve performance of the VM
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
    vb.customize ["modifyvm", :id, "--cpus", "2"]
    vb.customize ["modifyvm", :id, "--ioapic", "on"]
  end

  config.vm.provision :chef_zero, run: "always" do |chef|
    file = 'config/run-notifier.json'
    if File.exists?(file)
      config = JSON.parse(File.read(file))
      config.delete('run_list')
      chef.json.merge!(config)
    end

    puts chef.json

    chef.nodes_path = "nodes"

    # Recipes
    chef.add_recipe "run-notifier"
  end
end
