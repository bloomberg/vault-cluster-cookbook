name 'vault-cluster'
run_list 'vault-cluster::default'
default_source :community
cookbook 'vault-cluster', path: File.expand_path('../../../..', __FILE__)

override['consul']['config']['bootstrap_expect'] = 1
