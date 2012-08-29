#
# Cookbook Name:: tdd-example
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

file "/tmp/foo" do
  action :create
  owner "root"
  group "root"
  mode "0644"
  content "hey, I'm running on #{node[:platform]}!"
end