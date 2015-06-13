require 'spec_helper'

describe command('vagrant --version') do
  its(:stdout) { should match "Vagrant 1.7.2\n" }
end

describe command('virtualbox --help') do
  its(:stdout) { should contain 'Oracle VM VirtualBox Manager 4.3.28' }
end
