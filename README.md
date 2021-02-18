# Workstation Setup

1. Update System

```shell
sudo apt-get update
sudo apt-get upgrade
```

2. Clone .dotfiles Repo into Home Directory

```shell
# SSH
git clone git@github.com:thomascarman/.dotfiles.git ~/.dotfiles

# HTTPS
git clone https://github.com/thomascarman/.dotfiles.git ~/.dotfiles
```

3. Install Zsh && Curl

```shell
sudo apt-get install zsh
sudo apt-get install curl
```

4. Install Oh My Zsh!

```shell
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

5. Download PowerLevel10k Theme

```shell
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

6. Install nvm

```shell
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

# Install Version
nvm install 0.0.0
```

7. Create symlinks in the Home Directory

```shell
# Link to .zshrc file
ln -s ~/.dotfiles/.zshrc ~/.zshrc

# Link to .gitconfig Globals
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

# Link to .p10k.zsh file
ln -s ~/.dotfiles/.p10k.zsh ~/.p10k.zsh

# Link to Remotes main settings for VScode
ln -s ~/.dotfiles/.vscode/settings.json ~/.vscode-server/data/Machine/settings.json
```

8. Install HomeBrew, and install software listed in Brewfile

```shell
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile
echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile

# Then pass in the Brewfile
brew bundle --file ~/.dotfiles/Brewfile
```
