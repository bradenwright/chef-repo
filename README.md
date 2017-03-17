# chef-repo

# commands
# Creates an encrypted data bag based on knife.rb setting: cookbook_path ["#{ENV['HOME']}/chef-repo/cookbooks"]
knife vault create bb_users braden '{ "email": "braden.wright.it@gmail.com", "first_name": "Braden", "home_path": "/home/braden", "last_name": "Wright", "password": "p@ssw0rd", "username": "braden" }' -A "braden" -S "recipe:bb_*" --mode solo
knife vault create bb_users braden -f ~/chef-repo/data_bags/bb_users/braden.json -A "braden" -S "recipe:bb_*" --mode solo
# which would create data bags in ~/chef-repo/data_bags/bb_users/braden.json

# chef_vault_item helper in recipes comes from chef-vault cookbook in bb_base, it falls back to using unencrypted databags for test kitchen"
