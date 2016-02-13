#
# Cookbook Name:: ntp
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "yum"

package 'ntp' do
  action :install
end

service 'ntpd' do
  action [:enable, :start]
end

bash 'set time' do
  user 'root'
  code <<-EOH
  service ntpd stop
  ntpdate time.nist.gov
  service ntpd start
  EOH
end

