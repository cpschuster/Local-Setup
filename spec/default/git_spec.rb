require 'spec_helper'

describe file('/home/vagrant/.gitconfig') do
  it { should contain 'editor = /usr/bin/vim' }
  it { should contain 'email = vagrant@gmail.com' }
  it { should contain 'name = vagrant' }
end
