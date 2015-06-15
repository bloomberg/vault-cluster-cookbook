#
# Cookbook: vault-cluster
# License: Apache 2.0
#
# Copyright (C) 2015 Bloomberg Finance L.P.
#
node.default['consul']['config']['bootstrap'] = true
include_recipe 'vault-cluster::default'
