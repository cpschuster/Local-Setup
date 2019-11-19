require 'spec_helper'

describe user(ENV['USERNAME']) do
  it { should have_login_shell '/usr/bin/zsh' }
end

describe file("/home/#{ENV['USERNAME']}/.oh-my-zsh") do
  it { should be_directory }
end

describe file("/home/#{ENV['USERNAME']}/.zshrc") do
  it { should be_file }
end

describe file('/etc/zsh/zshenv') do
  it { should contain('for i in /etc/profile.d/*.sh; do') }
end
