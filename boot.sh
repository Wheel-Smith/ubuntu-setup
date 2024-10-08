set -e

ascii_art=$(
  cat <<'EOF'
 __    __  _                  _         __             _  _    _     
/ / /\ \ \| |__    ___   ___ | |       / _\ _ __ ___  (_)| |_ | |__  
\ \/  \/ /| '_ \  / _ \ / _ \| |       \ \ | '_ ` _ \ | || __|| '_ \ 
 \  /\  / | | | ||  __/|  __/| |       _\ \| | | | | || || |_ | | | |
  \/  \/  |_| |_| \___| \___||_| _____ \__/|_| |_| |_||_| \__||_| |_|
                                |_____|                                 
EOF
)

echo "$ascii_art"
echo "=> This setup is for fresh Ubuntu 24.04 installations only!"
echo -e "\nBegin installation (or abort with ctrl+c)..."

exit 1

sudo apt-get update >/dev/null
sudo apt-get install -y git >/dev/null

echo "Cloning Setup repo..."
rm -rf ~/.local/share/setup
git clone https://github.com/Wheel-Smith/ubuntu-setup.git ~/.local/share/setup >/dev/null

# Default to the "main" branch if $BRANCH_SET is not set
if [[ ${BRANCH_SET:-main} != "main" ]]; then
  cd ~/.local/share/setup
  git fetch origin "${BRANCH_SET:-main}" && git checkout "${BRANCH_SET:-main}"
  cd -
fi

echo "Installation starting..."
source ~/.local/share/setup/install.sh
