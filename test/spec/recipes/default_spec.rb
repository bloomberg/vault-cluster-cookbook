require 'spec_helper'

describe_recipe 'vault-cluster::default' do
  cached(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  context 'with default attributes' do
    it { expect(chef_run).to include_recipe('consul-cluster::default') }
    it { expect(chef_run).to include_recipe('hashicorp-vault::default') }
  end
end
