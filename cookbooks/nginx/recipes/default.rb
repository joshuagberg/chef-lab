#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "yum"
include_recipe "yum-epel"

package 'nginx' do
  action :install
end

service 'nginx' do
  action [:enable,:stop]
end

directory "/usr/share/nginx/www" do  
   mode="0664"
   recursive true
   action :create
end

cookbook_file "/usr/share/nginx/www/index.html" do
  source "index.html"
  mode="0664"
end
