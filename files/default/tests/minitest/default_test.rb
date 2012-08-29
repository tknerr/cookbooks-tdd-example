require 'minitest/spec'

describe 'tdd-example::default' do

  include MiniTest::Chef::Assertions
  include MiniTest::Chef::Context
  include MiniTest::Chef::Resources

  it 'should create the file "/tmp/foo"' do
    file("/tmp/foo").must_exist
  end

  it 'should populate "/tmp/foo" file with the node platform' do
    file("/tmp/foo").must_match /running on #{node['platform']}/
  end
end