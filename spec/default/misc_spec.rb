require 'spec_helper'

describe file('/home/vagrant/.config/redshift.conf') do
  it { should be_file }
end

describe command('which gargoyle') do
  let(:disable_sudo) { true }
  its(:stdout) { should match "/usr/games/gargoyle\n" }
end
