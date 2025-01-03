# list of packages separated by spaces
PACKAGES="git zoxide neovim tmux ranger lazygit github-cli postgresql"

echo -n "Checking permissions: "
if [ "$(id -ru)" == "0" ]; then
  echo "OK"
else
  echo "ERROR!"
  echo "this script must be executed by root"
  echo "Ex: sudo $0"
fi

## system related commands
echo "Disabling readonly filesystem"
steamos-readonly disable

if [ ! -e "/etc/pacman.d/gnupg/trustdb.gpg" ]; then
  echo "Initalizing pacman keys"
  pacman-key --init
  pacman-key --populate archlinux
  pacman-key --populate holo
fi

echo "Installing C compilers"
pacman -Sy --noconfirm gcc base-devel glibc linux-api-headers

echo "Installing package"
pacman -Sy --noconfirm $PACKAGES

echo "Installing Bun CLI"
curl -fsSL https://bun.sh/install | bash

# echo "Re-enabling readonly filesystem"
# steamos-readonly enable

echo "Done"
