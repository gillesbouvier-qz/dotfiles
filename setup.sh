#!/bin/bash
# install lazygit
curl -s https://api.github.com/repos/jesseduffield/lazygit/releases/latest \
 | grep "browser_download_url.*Linux_x86_64.tar.gz" \
 | cut -d : -f 2,3 \
 | tr -d \" \
 | wget -O /tmp/lazygit.tar.gz -qi -
tar xvf /tmp/lazygit.tar.gz lazygit
sudo mv lazygit /usr/local/bin/
