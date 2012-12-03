require 'chefspec'
require 'fauxhai'

describe 'tdd-example::default' do

  context "on Ubuntu" do
    before { Fauxhai.mock(platform: 'ubuntu') }
    let (:chef_run) { ChefSpec::ChefRunner.new.converge 'tdd-example::default' }

    it 'should create "/tmp/foo" telling that it\'s running on Ubuntu' do
      chef_run.should create_file_with_content '/tmp/foo', 'hey, I\'m running on ubuntu!'
    end
  end

  context "on CentOS" do
    before { Fauxhai.mock(platform: 'centos') }
    let (:chef_run) { ChefSpec::ChefRunner.new.converge 'tdd-example::default' }

    it 'should create "/tmp/foo" telling that it\'s running on CentOS' do
      chef_run.should create_file_with_content '/tmp/foo', 'hey, I\'m running on centos!'
    end
  end
end