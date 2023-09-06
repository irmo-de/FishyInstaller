#!/bin/bash

# 1. Install fish shell
sudo apt update
sudo apt install -y fish

# 2. Set fish as the default shell
chsh -s `which fish`

# 3. Install Oh My Fish (OMF)
curl -L https://get.oh-my.fish > install_omf.fish
fish install_omf.fish
rm install_omf.fish

# 4. Install bobthefish theme
fish -c "omf install bobthefish"

# 5. Set bobthefish as the default theme
echo "set -g theme_display_virtualenv no" >> ~/.config/fish/config.fish
echo "set -g theme_nerd_fonts yes" >> ~/.config/fish/config.fish

echo "All set! Please restart your terminal or re-login for changes to take effect."
