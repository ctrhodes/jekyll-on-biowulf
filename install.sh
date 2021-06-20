sinteractive
module load ruby gcc/10.2.0

# Install Ruby Gems to ~/gems:
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

gem install bundler jekyll
