require 'spec_helper'

describe file("/home/#{ENV['USERNAME']}/.gitconfig") do
  it { should contain 'editor = /usr/bin/vim' }
  it { should contain 'email = github@peace.neomailbox.net' }
  it { should contain 'name = cpschuster' }
end
