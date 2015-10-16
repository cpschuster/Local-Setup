require 'spec_helper'

programs = [
  'oracle-java7-installer',
  'oracle-java8-installer'
]

describe ppa('ppa:webupd8team/java') do
    it { should be_enabled }
    it { should exist }
end

describe command('java -version') do
    its(:stderr) { should contain('1.8.') }
end

describe file('/usr/local/bin/idea') do
    it { should be_symlink }
end

describe file('/usr/share/applications/jetbrains-idea-ce.desktop') do
    it { should be_file }
end

describe command('gradle --version') do
    its(:stdout) { should contain('Gradle 2.4') }
end

describe command('LEIN_ROOT=true lein -v') do
    its(:stdout) { should contain('Leiningen 2.5.') }
end
