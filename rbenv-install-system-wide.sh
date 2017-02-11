# Author: jnx (https://gist.github.com/jnx)
# Link: https://gist.github.com/jnx/1256593

# Update, upgrade and install development tools:
apt update
apt -y upgrade
apt -y install build-essential
apt -y install git-core
apt install -y libssl-dev libreadline-dev zlib1g-dev

# Install rbenv
git clone git://github.com/sstephenson/rbenv.git /usr/local/rbenv

# Add rbenv to the path:
echo '# rbenv setup' > /etc/profile.d/rbenv.sh
echo 'export RBENV_ROOT=/usr/local/rbenv' >> /etc/profile.d/rbenv.sh
echo 'export PATH="$RBENV_ROOT/bin:$PATH"' >> /etc/profile.d/rbenv.sh
echo 'eval "$(rbenv init -)"' >> /etc/profile.d/rbenv.sh

chmod +x /etc/profile.d/rbenv.sh
source /etc/profile.d/rbenv.sh

# Install ruby-build:
pushd /tmp
  git clone git://github.com/sstephenson/ruby-build.git
  cd ruby-build
  ./install.sh
popd

# Install Ruby 1.9.2-p290:
rbenv install 2.3.1
rbenv global 2.3.1

# Rehash:
rbenv rehash