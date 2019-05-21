#
# Cookbook:: mynginx
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe 'nginx::repo'

package 'nginx' do
  action :install
end

remote_file '/usr/share/nginx/html/index.html' do
  source 'https://s3.amazonaws.com/inspec-jumpstart/web01.html'
end

service 'nginx' do
  supports status: true, restart: true, reload: true
  action [:enable, :start]
end

