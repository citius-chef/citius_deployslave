#
# Cookbook:: citius_deployslave
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'java'
include_recipe 'citius_jenkins::install_slave'
include_recipe 'citius_deployslave::configure_iptables'

tomcat_install 'CalculatorApplication' do
  version '8.0.36'
end

if node['platform'] == 'rhel' || node['platform'] == 'redhat' || node['platform'] == 'centos'
  cron 'schedule_chef_client' do  
    minute '30'
    command 'chef-client'
  end
end

tag('slave')
ruby_block 'set `slave_labels` node attributes to deploy-server' do
  block do
    node.normal['slave_labels'] = 'deploy-server'
    node.save
  end
end