#
# Cookbook: vault-cluster
# License: Apache 2.0
#
# Copyright 2015-2016, Bloomberg Finance L.P.
#
include_recipe 'consul-cluster::default'

poise_service_user node['hashicorp-vault']['service_user'] do
  group node['hashicorp-vault']['service_group']
end

directory File.dirname(node['vault-cluster']['tls']['ssl_key']['path']) do
  recursive true
  owner node['hashicorp-vault']['service_user']
  group node['hashicorp-vault']['service_group']
end

directory File.dirname(node['vault-cluster']['tls']['ssl_cert']['path']) do
  recursive true
  owner node['hashicorp-vault']['service_user']
  group node['hashicorp-vault']['service_group']
end

ssl_certificate node['hashicorp-vault']['service_name'] do
  owner node['hashicorp-vault']['service_user']
  group node['hashicorp-vault']['service_group']
  namespace node['vault-cluster']['tls']
  notifies :reload, "vault_service[#{name}]", :delayed
end

node.default['hashicorp-vault']['config']['backend_type'] = 'consul'
node.default['hashicorp-vault']['config']['bag_item'] = 'consul'
include_recipe 'hashicorp-vault::default'
