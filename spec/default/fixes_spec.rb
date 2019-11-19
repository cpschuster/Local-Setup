require 'spec_helper'

describe file("/home/#{ENV['USERNAME']}/.mime.types") do
  its(:content) { should match 'application/x-shockwave-flash       swf swfl' }
end
