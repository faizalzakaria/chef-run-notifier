#
# Cookbook Name:: run-notifier
# Recipe:: default
#
# Author:: Faizal F Zakaria (phaibusiness@gmail.com)
#
# Copyright 2015, Faizal F Zakaria
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include_recipe "chef_handler"

chef_gem 'chef-handler-status_notifier' do
  version: "0.4.1"
  action: install
end

require 'chef/handler/status_notifier'

chef_handler 'StatusNotifierHandler' do
  source 'chef/handler/status_notifier'
  arguments [node[:run_notifier][:slack], node[:run_notifier][:hipchat]]
  action :nothing
end.run_action(:enable)
