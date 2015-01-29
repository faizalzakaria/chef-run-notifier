#
# Cookbook Name:: chef-run-notifier
# Recipe:: default
#
# Copyright 2015, Faizal Zakaria
#
# All rights reserved - Do Not Redistribute
#

include_recipe "chef_handler"

gem_package 'hipchat' if node['run_notifier']['hipchat']['enabled']
gem_package 'slack-notifier' if node['run_notifier']['slack']['enabled']

cookbook_file "#{node["chef_handler"]["handler_path"]}/run_notifier.rb" do
  source "run_notifier.rb"
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

chef_handler "RunNotifier::Notify" do
  source "#{node["chef_handler"]["handler_path"]}/run_notifier.rb"
  arguments [node[:run_notifier][:slack], node[:run_notifier][:hipchat]]
  action :enable
end
