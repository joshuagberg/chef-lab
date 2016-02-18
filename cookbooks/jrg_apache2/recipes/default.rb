package 'httpd'

service 'httpd' do
  action [:enable, :start]
end

file '/var/www/html/index.html' do
  content '<html>
  <body>
    <h1>hello world</h1>
  </body>
</html>'

httpd_service 'default' do
  enable : false
end

httpd_service 'instance-1' do
  listen_ports ['81', '82']
  action :create
end

httpd_service 'an websites' do
  instance_name 'josh'
  servername 'www.apachelab.local'
  version '2.4'
  mpm 'event'
  threadlimit '4096'
  listen_ports ['1234']
  action :create
end


