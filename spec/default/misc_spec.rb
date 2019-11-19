require 'spec_helper'

describe file("/home/#{ENV['USERNAME']}/.config/redshift.conf") do
  it { should be_file }
end
