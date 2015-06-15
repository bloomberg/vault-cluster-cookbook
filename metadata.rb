name 'vault-cluster'
maintainer 'John Bellone'
maintainer_email 'jbellone@bloomberg.net'
license 'Apache 2.0'
description 'Wrapper cookbook for installing and configuring Vault.'
long_description 'Wrapper cookbook for installing and configuring Vault.'
version '1.0.0'

supports 'ubuntu', '>= 12.04'
supports 'redhat', '>= 6.4'
supports 'centos', '>= 6.4'

depends 'consul'
depends 'hashicorp-vault'
