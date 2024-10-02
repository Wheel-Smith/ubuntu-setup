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
echo "=> Omakub is for fresh Ubuntu 24.04 installations only!"
echo -e "\nBegin installation (or abort with ctrl+c)..."

exit 1

sudo apt-get update >/dev/null
sudo apt-get install -y git >/dev/null

echo "Cloning Omakub..."
rm -rf ~/.local/share/omakub
git clone https://github.com/basecamp/omakub.git ~/.local/share/omakub >/dev/null
if [[ $OMAKUB_REF != "master" ]]; then
  cd ~/.local/share/omakub
  git fetch origin "${OMAKUB_REF:-stable}" && git checkout "${OMAKUB_REF:-stable}"
  cd -
fi

echo "Installation starting..."
source ~/.local/share/omakub/install.sh
