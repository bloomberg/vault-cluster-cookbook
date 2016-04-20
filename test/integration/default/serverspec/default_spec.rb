require 'chef-vault/test_fixtures'
require 'serverspec'
set :backend, :exec

describe command('which vault') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match '/usr/local/bin/vault' }
end

describe service('vault') do
  it { should be_enabled }
  it { should be_running }
end

describe command('which consul') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match '/usr/local/bin/consul' }
end

describe service('consul') do
  it { should be_enabled }
  it { should be_running }
end
