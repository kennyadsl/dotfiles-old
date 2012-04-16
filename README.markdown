## My dotfiles

Rakefile install script and many other things, are inspired (copied somewhere) from the [Holman dotfiles repo](https://github.com/holman/dotfiles)

### install

- `git clone git://github.com/kennyadsl/dotfiles ~/.dotfiles`
- `cd ~/.dotfiles`
- `rake install`

The install rake task will symlink the appropriate files in `.dotfiles` to your
home directory. Everything is configured and tweaked within `~/.dotfiles`,
though.

You can also create a folder into your Dropbox folder to keep *secret* dotfiles.
Default is ~/Dropbox/Config/dotfiles but you can customize it into the Rakefile

### Project switcher with folder autocompletion and gemset automatic switch (WIP)

#### Assumption ( Edit code if you want to change this stuff )

- You have your projects in `~/Code/`
- You are working with rvm
- You have a gemset specific for each project (named as project folder)

##### Example
I have a project named `my_project` into the folder `~/Code/my_project` using the gemset `my_project` :D

I can do `proj my_project` to switch to that folder with the right rvm gemset. 


