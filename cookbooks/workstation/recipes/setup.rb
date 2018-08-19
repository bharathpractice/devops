ip = node['ipaddress']
mem = node['memory']['total']
cpu = node['cpu']['0']['mhz']
puts "ip of the server is #{node['ipaddress']}"
puts "memory used as of now is #{node['memory']['total']}"
puts "cpu #{node['cpu']['0']['mhz']}"
