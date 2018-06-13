# Description
These are configuration files that are normally hidden in the home directory.

I've moved these to a dedicated directory so that they can be backed up and
thrown into a repo.

# Usage
For most files, you'll want to create a soft-link in the home directory, e.g.

```
cd ~
ln -s config/vimrc .vimrc
```

There are also a few special cases

## bashrc
Since /home/$USER/.bashrc may come with some nice defaults, the recommended
approach is to source config/bashrc in .bashrc, e.g.

```
echo "source $HOME/config/bashrc" >> ~/.bashrc
```

Additionally, for local machine-specific configurations to the .bashrc, you can
create a file config/bashrc.local that is not tracked by Git, and is sourced by
config/bashrc when present.

## gtk.css
gtk.css should be symlinked in ~/.config/gtk-3.0/gtk.css

# Other configurations

## Screen plugin in vim
To install the screen plugin in vim, install from the .vba:
```
wget http://www.vim.org/scripts/download_script.php?src_id=16100 -O screen.vba
vi screen.vba  # Install using :so %
```

## KDE SDDM Background
The login background is at
`/usr/share/plasma/look-and-feel/org.kde.breeze.desktop/contents/components/artwork/background.png`,
You can have it be a symlink to somewhere else.
