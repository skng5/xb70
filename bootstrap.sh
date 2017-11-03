#! /usr/bin/env bash
#
# Bootstrap startup - Use these commands to get Valkyrie application up and running for the first time
#
gem install pg -- --with-pg-config=/usr/bin/pg_config
bundle install
rake db:create:all
#
# Fix user privs
# 
sudo su - postgres
dropuser vagrant
createuser -s -r vagrant
exit
#
rake db:create:all
rake db:migrate
rake db:seed
#
cd valkyrie/
bundle install
rake db:create
rake db:migrate
cd ..
#
echo 'To start up next time:'
echo 'rake server:development &'
echo 'bin/rails server -b 0.0.0.0'
rake server:development &
bin/rails server -b 0.0.0.0
