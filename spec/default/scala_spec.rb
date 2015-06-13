require 'spec_helper'

describe command('scala -version') do
    its(:stderr) { should contain('2.11.7') }
end

describe command('sbt --version') do
    its(:stdout) { should contain('0.13.8') }
end