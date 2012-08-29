require 'chefspec'

describe 'tdd-example::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'tdd-example::default' }
  it 'should do something' do
    pending 'Your recipe examples go here.'
  end
end
