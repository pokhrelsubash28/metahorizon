#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

package 'epel-release' do
action :install
end

service 'nginx' do
  action [ :enable, :start ]
end
service 'nginx' do
  action [ :enable, :start ]
end

cookbook_file "/usr/share/nginx/html/index.html" do
  source "index.html"
  mode "0644"
end
