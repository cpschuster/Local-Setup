require 'spec_helper'

describe command('java -version') do
    its(:stderr) { should contain('1.8.') }
end
