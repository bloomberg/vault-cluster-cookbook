#
# Cookbook: vault-cluster
# License: Apache 2.0
#
# Copyright (C) 2015 Bloomberg Finance L.P.
#
include_recipe 'consul::default'

node.default['vault']['config']['backend_type'] = :consul
include_recipe 'hashicorp-vault::default'
