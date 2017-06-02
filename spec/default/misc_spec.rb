require 'spec_helper'

describe file('/home/ubuntu/.config/redshift.conf') do
  it { should be_file }
end
