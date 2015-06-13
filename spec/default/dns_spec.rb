require 'spec_helper'

describe file('/etc/dhcp/dhclient.conf') do
  its(:content) { should contain('supersede domain-name-servers 208.67.222.222,208.67.220.220;') }
end

describe file('/etc/resolv.conf.auto') do
  it { should be_file }
end

describe file('/etc/resolv.conf') do
  it { should be_file }
end
