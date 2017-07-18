curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
cat /etc/apt/sources.list.d/yarn.list

apt-get update && apt-get install -y \
  rake \
  vim \
  mc \
  build-essential \
  libssl-dev \
  git \
  zsh \
  wget \
  silversearcher-ag \
  yarn

cd /root
echo "Install yarn"

echo "Install zsh"
curl -o- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | bash

curl -o- https://raw.githubusercontent.com/redcom/dotFiles/master/.zshrc > /.zshrc
echo "install zshrc"
source ~/.zshrc
# Install nvm
echo "install nvm"
echo "install node"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
nvm install v8 # change this to update to latest node version

echo "Install dotVimFiles"
git clone https://github.com/redcom/dot_vim_clone.git ~/.vim
cd ~/.vim/bundle/YouCompleteMe && ./install.py
cd ~/.vim/
git clone https://github.com/gmarik/vundle.git bundle/vundle
timeout 300s vim +PluginInstall +qall
timeout 900s vim +PluginInstall +qall

echo "install .editorconfig"
curl -o- https://raw.githubusercontent.com/redcom/dotFiles/master/.editorconfig > /.editorconfig


