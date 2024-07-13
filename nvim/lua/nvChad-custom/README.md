# NvChad Customizations

These customizations can replace the example custom folder when using NvChad.

## Install Instructions

[https://nvchad.com/](https://nvchad.com/docs/quickstart/install)

### Linux

```bash
git clone https://github.com/NvChad/starter ~/.config/nvim && nvim
```

### Windows

```bash
git clone https://github.com/NvChad/starter %USERPROFILE%\AppData\Local\nvim && nvim
```

```powershell
git clone https://github.com/NvChad/starter $ENV:USERPROFILE\AppData\Local\nvim && nvim
```

## Post Install

Copy/Link Files from nvChad-Custom directly into Lua directory

## Uninstall

```
# Linux / Macos (unix)
rm -rf ~/.config/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim

# Flatpak (linux)
rm -rf ~/.var/app/io.neovim.nvim/config/nvim
rm -rf ~/.var/app/io.neovim.nvim/data/nvim
rm -rf ~/.var/app/io.neovim.nvim/.local/state/nvim

# Windows CMD
rd -r ~\AppData\Local\nvim
rd -r ~\AppData\Local\nvim-data

# Window PowerShell
rm -Force ~\AppData\Local\nvim
rm -Force ~\AppData\Local\nvim-data
```
