
package 'apache2' do
	action :install 
end

ip = node['ipaddress']
mem = node['memory']['total']
cpu = node['cpu']['0']['mhz']
file '/var/www/html/index.html' do
	content "<h1>Hello,Bharath!<h1>
	<h2>#{node['ipaddress']}<h2>
	<h3>#{node['memory']['total']}</h3>
	<h4>#{node['cpu']['0']['mhz']}</h4>

"
end

service 'apache2' do
	action [ :restart, :enable ]
end
