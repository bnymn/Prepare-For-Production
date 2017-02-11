# Install rbenv system wide
./rbenv-install-system-wide.sh

# Install my favorite tools
apt -y install nano mc screen

# Install dependencies for Rails
apt -y install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev nodejs

# Install bundler
gem install bundler

# Install NodeJS
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
apt install -y nodejs

# Install rails
gem install rails -v 4.2.7.1
rbenv rehash

# Install MySQL
apt -y install mysql-server mysql-client libmysqlclient-dev

# Install nginx
apt install nginx