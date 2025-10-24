# Install

To run Install script on the steam deck run command route of the folder

```bash
sudo ./install.sh
```
> Note: must be run in sudo mode to enable/disable the Read-only of the steam deck

## Known Issues

May come across errors with the PGP signatures getting corrupted or invalid. If so can fix by clearing of pacman cache and re-initialize the pacman keys.


1. Disable readonly
```bash
sudo steamos-readonly disable
```

2. Run install script

