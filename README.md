# vault-cluster-cookbook
[![Build Status](https://img.shields.io/travis/johnbellone/vault-cluster-cookbook.svg)](https://travis-ci.org/johnbellone/vault-cluster-cookbook)
[![Cookbook Version](https://img.shields.io/cookbook/v/hashicorp-vault.svg)](https://supermarket.chef.io/cookbooks/hashicorp-vault)
[![Coverage](https://img.shields.io/codecov/c/github/johnbellone/vault-cluster-cookbook.svg)](https://codecov.io/github/johnbellone/vault-cluster-cookbook)
[![License](https://img.shields.io/badge/license-Apache_2-blue.svg)](https://www.apache.org/licenses/LICENSE-2.0)

[Wrapper cookbook][0] which installs and configures [Vault][1] with
[Consul][2] as its backend.

## Basic Usage
This cookbook was designed as an example on how to use our
[Vault cookbook][3] and [Consul cookbook][4] for providing a highly
available secrets management infrastructure. This cookbook highlights
several of our best practices for developing reusable infrastructure
at Bloomberg.

It provides a bullet-proof example on how to properly write a
[wrapper cookbook][0] and deploy secrets management infrastructure using
Chef. The values from the node attributes set in the [default recipe](recipes/default.rb)
are passed into the resources for both cookbooks.

Out of the box the following platforms are certified to work and
are tested using our [Test Kitchen][5] configuration. Additional platforms
_may_ work, but your mileage may vary.
- CentOS (RHEL) 6.6, 7.1
- Ubuntu 12.04, 14.04

[0]: http://blog.vialstudios.com/the-environment-cookbook-pattern/#thewrappercookbook
[1]: https://www.vaultproject.io
[2]: https://www.consul.io/
[3]: https://github.com/johnbellone/vault-cookbook
[4]: https://github.com/johnbellone/consul-cookbook
[5]: http://kitchen.ci/
