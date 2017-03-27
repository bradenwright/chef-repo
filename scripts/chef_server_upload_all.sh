#!/bin/bash

pushd ~/chef-repo

echo '{"ssl": { "verify": false }}' > ~/.berkshelf/config.json

find ~/chef-repo/cookbooks -maxdepth 1 -type d \( ! -wholename ~/chef-repo/cookbooks \) -exec bash -c "cd '{}' && git pull && berks && berks upload" \;

knife upload /data_bags
#knife upload /environments

popd
