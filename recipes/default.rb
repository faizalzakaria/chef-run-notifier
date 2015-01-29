#
# Cookbook Name:: chef-run-notifier
# Recipe:: default
#
# Copyright 2015, Faizal Zakaria
#
# All rights reserved - Do Not Redistribute
#

include_recipe "chef_handler"

chef_gem 'chef-handler-status_notifier'
require 'chef/handler/status_notifier'

chef_handler 'StatusNotifierHandler' do
  source 'chef/handler/status_notifier'
  arguments [node[:run_notifier][:slack], node[:run_notifier][:hipchat]]
  action :nothing
end.run_action(:enable)
