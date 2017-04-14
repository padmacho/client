Vagrant.configure("2") do |config|
	config.vm.define :client do |client|
		client.vm.box = "ubuntu/trusty64"
		client.vm.box_check_update = false
		client.vm.provider "virtualbox" do |v|
		  v.name = "client"
		  v.customize ["modifyvm", :id, "--memory", "6144"]
		end
		client.vm.network :private_network, ip: "192.168.7.6"
		client.vm.hostname = "client"
		client.vm.provision "shell", path: "setup.sh"
	end
end
