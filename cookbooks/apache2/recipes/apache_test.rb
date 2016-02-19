httpd_service 'instance-1' do
  listen_ports ['81', '82']
  action :create
end

httpd_service 'an websites' do
  instance_name 'bob'
  servername 'www.computers.biz'
  version '2.4'
  mpm 'event'
  threadlimit '4096'
  listen_ports ['1234']
  action :create
end
