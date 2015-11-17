require 'spec_helper'

describe file('/home/vagrant/.config/terminator/config') do
  its(:content) { should contain('scrollback_infinite = True') }
  its(:content) { should contain('scroll_on_output = False') }
  its(:content) { should contain('font = Monospace 16') }
end

describe file('/etc/lightdm/lightdm.conf.d/50_vagrant.conf') do
  its(:content) { should contain('autologin-user=vagrant') }
end
