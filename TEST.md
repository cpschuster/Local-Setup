Test Requirements:
- As Run Requirements
- Install Vagrant
```
wget https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.2_x86_64.deb
sudo dpkg -i vagrant_1.7.2_x86_64.deb
```
- Install Virtualbox
```
wget http://download.virtualbox.org/virtualbox/4.3.28/virtualbox-4.3_4.3.28-100309~Ubuntu~raring_amd64.deb
sudo dpkg -i virtualbox-4.3_4.3.28-100309~Ubuntu~raring_amd64.deb
```
- Install Ruby
```
wget -O chruby-0.3.9.tar.gz https://github.com/postmodern/chruby/archive/v0.3.9.tar.gz
tar -xzvf chruby-0.3.9.tar.gz
cd chruby-0.3.9/
sudo make install
cd ..
git clone https://github.com/sstephenson/ruby-build.git
cd ruby-build
./install.sh
ruby-build 2.1.3
chruby 2.1.3
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
