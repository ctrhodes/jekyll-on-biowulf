# to use browsers on Biowulf requires port forwarding. Easiest way to deal with this is use NoMachine or other vitual desktop and serve site to local host

# Install Ruby Gems home to path:
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

# start interactive session. as of writing, gcc/9.2.0 and gcc/10.2.0 versions work
sinteractive
module load ruby gcc/10.2.0

# create new site
gem install bundler jekyll
jekyll new my-awesome-site
cd my-awesome-site
bundle exec jekyll serve

# => Now browse to http://localhost:4000

# serve existing site
cd existing-site
bundle exec jekyll serve
