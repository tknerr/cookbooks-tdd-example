Vagrant::Config.run do |config|

  config.vm.box = "ubuntu-12.04-server-amd64-vagrant"
  config.vm.box_url = "http://dl.dropbox.com/u/13494216/ubuntu-12.04-server-amd64-vagrant.box"

  config.vm.network :hostonly, "192.168.44.10"
  config.vm.host_name = "tdd-example-vm"

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = [ ".." ]
    chef.add_recipe "tdd-example::default"
  end
end