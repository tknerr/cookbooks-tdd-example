require 'faster_require'
require 'chefspec'

describe 'tdd-example::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'tdd-example::default' }
  it 'should create "/tmp/foo"' do
    chef_run.should create_file '/tmp/foo'
  end
end