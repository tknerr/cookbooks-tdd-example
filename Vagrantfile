Vagrant::Config.run do |config|

  config.vm.box = "opscode-ubuntu-12.04"
  config.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/boxes/opscode-ubuntu-12.04.box"

  config.vm.network :hostonly, "192.168.44.10"
  config.vm.host_name = "tdd-example-vm"

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = [ "cookbooks", ".." ]
    chef.add_recipe "minitest-handler"
    chef.add_recipe "tdd-example::default"
  end
end