## My dotfiles (OS X, zsh, git, RVM, Vim, Sublime Text 2)

###### What's inside?

- RVM settings
- git - configuration, bash completion (for homebrew) and UTF-8 fix for OS X, custom prompt: `(master) username:~/project`
- Sublime Text 2 configuration (Vintage package, 2 spaces tabs)
- Vim configuration and color scheme (requires [Janus](https://github.com/carlhuda/janus))

Rakefile install script and many other things are inspired (also copied) from the [Holman dotfiles repo](https://github.com/holman/dotfiles)

### How to install

```bash
$ git clone git://github.com/kennyadsl/dotfiles ~/.dotfiles
$ cd ~/.dotfiles
$ rake install
```

The `rake install` task will symlink the appropriate files in `.dotfiles` to your
home directory. Everything is configured and tweaked within `~/.dotfiles`, though.

### Dropbox configuration files
You can also create a folder into your Dropbox folder to keep your *private* dotfiles.
Default is ~/Dropbox/Config/dotfiles customizable from the Rakefile.
