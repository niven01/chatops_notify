# Encoding: utf-8
#
# Cookbook Name:: chatops_notify_tests
# Recipe:: slack_notify
#
# Copyright 2012-2015, Rackspace

slack_notify 'deployed Test' do
  channel 'test'
  username 'Chef'
  webhook ''
  message ''
end