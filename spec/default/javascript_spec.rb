require 'spec_helper'

describe command("zsh -c 'nvm exec v0.12.5 npm --version'") do
  its(:stdout) { should contain('Running node v0.12.5') }
end