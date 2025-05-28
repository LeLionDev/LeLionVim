# donwload dependencies for manual build of neovim https://github.com/neovim/neovim/blob/master/BUILD.md
sudo apt install make
sudo apt install cmake

mkdir ~/applications
cd ~/applications

git clone https://github.com/neovim/neovim
git checkout release-0.11 # latest avaialble 2025

make CMAKE_BUILD_TYPE=RelWithDebInfo

sudo make install

# get config from git
mkdir ~/cfg
cd ~/cfg
git clone git@github.com:leliondev/lelionvim.git
cd

# setup config for nvim
mkdir -p ~/.config/nvim/lua/config
cp ~/cfg/lelionvim/init.lua ~/.config/nvim/init.lua
cp ~/cfg/lelionvim/lazy.lua ~/.config/nvim/lua/config/lazy.lua


