name 'vault-cluster'
maintainer 'John Bellone'
maintainer_email 'jbellone@bloomberg.net'
license 'Apache 2.0'
description 'Wrapper cookbook which installs and configures Vault with Consul as its backend.'
long_description 'Wrapper cookbook which installs and configures Vault with Consul as its backend.'
version '1.1.0'

supports 'ubuntu', '>= 12.04'
supports 'redhat', '>= 6.6'
supports 'centos', '>= 6.6'

depends 'consul-cluster', '~> 1.0'
depends 'hashicorp-vault', '~> 1.1'
