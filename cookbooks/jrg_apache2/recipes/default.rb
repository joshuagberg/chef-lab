package "httpd" do
  action :install
end

service "httpd" do
  action [:enable, :start]
end


#Virtual Hosts Files

node["lamp-stack"]["sites"].each do |sitename, data|
end

