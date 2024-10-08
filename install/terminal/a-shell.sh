# Configure the bash shell using setup defaults
[ -f "~/.bashrc" ] && mv ~/.bashrc ~/.bashrc.bak
cp ~/.local/share/setup/configs/bashrc ~/.bashrc

# Load the PATH for use later in the installers
source ~/.local/share/setup/defaults/bash/shell

[ -f "~/.inputrc" ] && mv ~/.inputrc ~/.inputrc.bak
# Configure the inputrc using setup defaults
cp ~/.local/share/setup/configs/inputrc ~/.inputrc
