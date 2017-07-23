apt-get update \
 && apt-get --force-yes install -y \
 curl wget locales locales-all tmux unzip\
 python-software-properties software-properties-common exuberant-ctags vim-gtk \
 git ack-grep dos2unix

apt-get --force-yes install -y \
 xclip \
 libtool libtool-bin \
 autoconf automake cmake \
 libncurses5-dev g++ pkg-config \
 python3-dev python3-pip python-pip

cd /tmp
git clone https://github.com/neovim/neovim
cd neovim
git pull origin
git checkout v0.1.7
make CMAKE_BUILD_TYPE=RelWithDebInfo && make install
pip install pep8 flake8 pyflakes isort yapf
pip install --user --upgrade neovim
pip3 install neovim

