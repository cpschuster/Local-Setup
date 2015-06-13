Sets up an Ubuntu distro to have the utilities and settings I like.

Run Requirements:
- Install Ansible
```
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible
```
- Run:
```
ansible-playbook --ask-sudo-pass -i "localhost," -c local provisioning/playbook.yml
```
