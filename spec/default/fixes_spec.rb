require 'spec_helper'

describe file('/home/vagrant/.mime.types') do
  its(:content) { should match 'application/x-shockwave-flash       swf swfl' }
end
