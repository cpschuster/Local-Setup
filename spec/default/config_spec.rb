require 'spec_helper'

describe file("/home/#{ENV['USERNAME']}/.config/terminator/config") do
  its(:content) { should contain('scrollback_infinite = True') }
  its(:content) { should contain('scroll_on_output = False') }
  its(:content) { should contain('font = Monospace 14') }
end
