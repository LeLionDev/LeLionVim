# get config from git
mkdir ~/cfg
cd ~/cfg
git clone git@github.com:leliondev/lelionvim.git
cd

# setup config for nvim
mkdir -p ~/.config/nvim/lua/config
cp ~/cfg/lelionvim/init.lua ~/.config/nvim/init.lua
cp ~/cfg/lelionvim/lazy.lua ~/.config/nvim/lua/config/lazy.lua


