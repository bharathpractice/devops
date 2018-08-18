
package 'apache2' do
	action :install 
end


file '/var/www/html/index.html' do
	content '<h1>Hello,Bharath!<h1>'
end

service 'apache2' do
	action [ :restart, :enable ]
end
