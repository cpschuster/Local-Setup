Test Requirements:
- As Run Requirements
- Install Vagrant
```
wget https://releases.hashicorp.com/vagrant/2.2.6/vagrant_2.2.6_x86_64.deb
sudo dpkg -i vagrant_2.2.6_x86_64.deb
```
- Install Virtualbox
```
sudo apt-get install virtualbox
```
- Install Ruby
```
sudo mkdir -p /opt/tarballs
cd /opt/tarballs
sudo wget -O chruby-0.3.9.tar.gz https://github.com/postmodern/chruby/archive/v0.3.9.tar.gz
sudo tar -xzvf chruby-0.3.9.tar.gz
cd chruby-0.3.9/
sudo make install
sudo apt-get install ruby-build
ruby-build 2.6.5 ~/.rubies/2.6.5
chruby 2.6.5
```
- Get Gems
```
gem install bundler
bundle install
```

To Run Tests:
```
vagrant destroy -f && vagrant up && rake spec
```

To Run Incremental Tests After VM Spinup
```
vagrant provision && rake spec
```
