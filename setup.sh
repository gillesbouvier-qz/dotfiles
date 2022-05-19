#!/bin/bash
## install lazygit
#curl -s https://api.github.com/repos/jesseduffield/lazygit/releases/latest \
# | grep "browser_download_url.*Linux_x86_64.tar.gz" \
# | cut -d : -f 2,3 \
# | tr -d \" \
# | wget -O /tmp/lazygit.tar.gz -qi -
#tar xvf /tmp/lazygit.tar.gz lazygit
#sudo mv lazygit /usr/local/bin/
## hide lazygit welcome msg
#mkdir -p ~/.config/lazygit
#echo "startuppopupversion: 5" > ~/.config/lazygit/state.yml

# install k9s
#curl -s https://api.github.com/repos/derailed/k9s/releases/latest \
# | grep "browser_download_url.*Linux_x86_64.tar.gz" \
# | cut -d : -f 2,3 \
# | tr -d \" \
# | wget -O /tmp/k9s.tar.gz -qi -
#tar xvf /tmp/k9s.tar.gz k9s
#sudo mv k9s /usr/local/bin/

# update packages
sudo apt update

# install less utility
sudo apt install less

# symlink manually since gitpod skips this if you have setup.sh present
ln -s ~/.dotfiles/.bash_aliases ~/.bash_aliases
