# Dconf in dotfiles
This is plaintext storage for `dconf`.

From https://wiki.gnome.org/action/show/Projects/dconf?action=show&redirect=dconf:

> `dconf` is a simple key-based configuration system. Keys exist in an unstructured database (but it is intended that keys that logically belong together are grouped together).

## How to use
The data is stored by dumping `dconf` to files. To dump `dconf` database **recursively** as plaintext, starting from root:
```
dconf dump / > ~/.dotfiles/dconf/root.conf
```

To load dumped data back into `dconf`:
```
cat ~/.dotfiles/dconf/root.conf | dconf load /
```

Since most data is machine-specific or irrelevant, one ought to find the important configuration and filter it out (`grep`?)

Useful command for debugging is `dconf watch /`, which listens for all configuration changes as they happen and displays them.

## References:
https://github.com/catern/dotfiles/tree/master/home/.config/dconf/user.d

