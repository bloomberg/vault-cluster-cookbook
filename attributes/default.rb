#
# Cookbook: vault-cluster
# License: Apache 2.0
#
# Copyright 2015-2016, Bloomberg Finance L.P.
#
default['vault-cluster']['tls']['ssl_key']['path'] = '/etc/vault/ssl/private/vault.key'
default['vault-cluster']['tls']['ssl_key']['source'] = 'chef-vault'
default['vault-cluster']['tls']['ssl_key']['bag'] = 'secrets'
default['vault-cluster']['tls']['ssl_key']['item'] = 'consul'
default['vault-cluster']['tls']['ssl_key']['item_key'] = 'private_key'
default['vault-cluster']['tls']['ssl_cert']['path'] = '/etc/vault/ssl/certs/vault.crt'
default['vault-cluster']['tls']['ssl_cert']['source'] = 'chef-vault'
default['vault-cluster']['tls']['ssl_cert']['bag'] = 'secrets'
default['vault-cluster']['tls']['ssl_cert']['item'] = 'consul'
default['vault-cluster']['tls']['ssl_cert']['item_key'] = 'certificate'
default['vault-cluster']['tls']['ssl_chain']['path'] = '/etc/vault/ssl/certs/chain.crt'
default['vault-cluster']['tls']['ssl_chain']['name'] = 'chain.crt'
default['vault-cluster']['tls']['ssl_chain']['source'] = 'chef-vault'
default['vault-cluster']['tls']['ssl_chain']['bag'] = 'secrets'
default['vault-cluster']['tls']['ssl_chain']['item'] = 'consul'
default['vault-cluster']['tls']['ssl_chain']['item_key'] = 'ca_certificate'
