PROJECT_ROOT = File.expand_path(File.join(File.dirname(__FILE__), '..'))

Given /^a Vagrant VM with tdd-example deployed is up and running$/ do
  `cd #{PROJECT_ROOT} && vagrant up --no-provision && vagrant provision`
  raise "failed to start Vagrant VM" unless $?.exitstatus == 0
end

When /^I ssh into the Vagrant VM$/ do
  ip = get_ip_from_vagrantfile
  steps %{
    When I ssh to "#{ip}" with the following credentials:
         | username | password |
         | vagrant  | vagrant  |
  }
end

When /^look at the foo file$/ do
  steps %{
    When I run "cat /tmp/foo"
  }
end

Then /^it should say "([^"]*)"$/ do |text|
  steps %{
    Then I should see "#{text}" in the output
  }
end

def get_ip_from_vagrantfile
  require 'vagrant'
  env = ::Vagrant::Environment.new(:cwd => PROJECT_ROOT)
  env.primary_vm.config.vm.networks[0][1][0]
end