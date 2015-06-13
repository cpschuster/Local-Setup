require 'spec_helper'

describe command("zsh -c 'chruby --version'") do
  its(:stdout) { should contain '0.3.9' }
end

describe command("zsh -c 'chruby 2.1.3 && which ruby'") do
  its(:stdout) { should match '/home/vagrant/.rubies/ruby-2.1.3/bin/ruby\n' }
end
