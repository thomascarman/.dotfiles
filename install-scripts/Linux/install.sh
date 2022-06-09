# ---
# This file is a work in progress and not fully tested
# Note: some scripts below have been just copied and pasted from instructions
# ---

log_file=~/install_progress_log.txt

sudo apt-get -y install zsh
if type -p zsh > /dev/null; then
  echo "zsh Installed" >> $log_file
else
  echo "zsh FAILED TO INSTALL!!!" >> $log_file
fi

sudo apt-get -y install curl
if type -p curl > /dev/null; then
  echo "curl Installed" >> $log_file
else
  echo "curl FAILED TO INSTALL!!!" >> $log_file
fi

curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# ---
# Install NVM and Nodejs LTS version
# ---
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
nvm install --lts
echo "NVM and Node installed Installed and Configured" >> $log_file
node_version=`node -v`
echo "Node: "$node_version


# ---
# Install git-completion and git-prompt
# ---
cd ~/
curl -OL https://github.com/git/git/raw/master/contrib/completion/git-completion.bash
mv ~/git-completion.bash ~/.git-completion.bash
curl https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh
echo "git-completion and git-prompt Installed and Configured" >> $log_file

echo -e "\n====== Summary ======\n"
cat $log_file
echo
echo "Enjoy"
rm $log_file
