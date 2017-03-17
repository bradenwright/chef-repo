current_dir = File.dirname(__FILE__)
log_level                :auto # :info
log_location             STDOUT
node_name                "#{ENV['USER']}"
client_key               "#{ENV['HOME']}/.chef/#{ENV['USER']}.pem"
validation_client_name   'chef-validator'
validation_key           "#{ENV['HOME']}/.chef/chef-validator.pem"
chef_server_url          'https://chef-server.dev.bb.com/organizations/bb'
syntax_check_cache_path  "#{ENV['HOME']}/.chef/syntax_check_cache"
cookbook_path ["#{ENV['HOME']}/chef-repo/cookbooks"]
ssl_verify_mode :verify_none
knife[:vault_mode] = 'solo' 
knife[:vault_admins] = [ 'braden' ]
