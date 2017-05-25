# -*- mode: ruby -*-
# vi: set ft=ruby :

# Adjustable settings
## Cassandra cluster settings
mem_mb = "3000"
cpu_count = "2"
server_count = 1
network = '192.168.5.'
first_ip = 10

servers = []
seeds = []
cassandra_tokens = []
(0..server_count-1).each do |i|
  name = 'cassandra-node' + (i + 1).to_s
  ip = network + (first_ip + i).to_s
  seeds << ip
  servers << {'name' => name,
              'ip' => ip,
              'provision_script' => "sleep 15; sudo sed -i -e 's/^rpc_address: localhost/rpc_address: #{ip}/g' /etc/cassandra/cassandra.yaml; sudo service cassandra restart;",
              'initial_token' => 2**127 / server_count * i}
end

# Configure VM server
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/xenial64"
  servers.each do |server|

    config.vm.define server['name'] do |x|
      x.vm.provider :virtualbox do |v|
        v.name = server['name']
        v.customize ["modifyvm", :id, "--memory", mem_mb]
        v.customize ["modifyvm", :id, "--cpus"  , cpu_count  ]
      end
      x.vm.network :private_network, ip: server['ip']
      x.vm.hostname = server['name']
      x.vm.provision "shell", path: "provision.sh"
      x.vm.provision "shell", inline: server['provision_script']

    end
  end
end
