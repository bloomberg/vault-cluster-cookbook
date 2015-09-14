name 'vault-cluster'
run_list 'vault-cluster::default'
default_source :community
cookbook 'vault-cluster', path: '.'
