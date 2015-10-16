require 'spec_helper'

describe file('/home/vagrant/.gitconfig') do
  it { should contain 'editor = /usr/bin/vim' }
  it { should contain 'email = github@peace.neomailbox.net' }
  it { should contain 'name = cpschuster' }
end
