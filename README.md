= Description
These are configuration files that are normally hidden in the home directory.

I've moved these to a dedicated directory so that they can be backed up and
thrown into a repo.

= Usage
For most files, you'll want to create a soft-link in the home directory, e.g.

```
cd ~
ln -s config/vimrc .vimrc
```

There are also a few special cases

== bashrc
Since /home/$USER/.bashrc may come with some nice defaults, the recommended
approach is to source config/bashrc in .bashrc, e.g.

```
echo "source /home/$USER/config/bashrc" >> ~/.bashrc
```

== gtk.css
gtk.css should be symlinked in ~/.config/gtk-3.0/gtk.css
