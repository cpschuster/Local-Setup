require 'spec_helper'

describe command('pip show virtualenvwrapper') do
  its(:stdout) { should contain('Version: 4.7.1') }
end

describe command("zsh -c 'mkvirtualenv --version'") do
  its(:stdout) { should contain('13.1.2')}
end
