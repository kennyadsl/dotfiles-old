## My dotfiles (OS X, BASH, GIT, RVM)

#### What's inside?

- rvm 
- git (gitignore)
- git Bash completion (for homebrew users)
- git UTF-8 fix for Lion
- print current git branch in the bash prompt

Rakefile install script and many other things are inspired (also copied) from the [Holman dotfiles repo](https://github.com/holman/dotfiles)

### install

- `git clone git://github.com/kennyadsl/dotfiles ~/.dotfiles`
- `cd ~/.dotfiles`
- `rake install`

The install rake task will symlink the appropriate files in `.dotfiles` to your
home directory. Everything is configured and tweaked within `~/.dotfiles`,
though.

### Dropbox config files
You can also create a folder into your Dropbox folder to keep your *private* dotfiles.
Default is ~/Dropbox/Config/dotfiles customizable from the Rakefile

### Project switcher with folder autocompletion and gemset automatic switch (WIP)

#### How does it works ( Edit code if you want to change this stuff )

- You have your projects in `~/Code/`
- You are working with rvm
- You have a gemset specific for each project (named as project folder)

For example, you have a project named `my_project` into the folder `~/Code/my_project` using the gemset `my_project` :D

You can launch anywhere in your system `proj my_project` to switch to that folder with the right rvm gemset. This will use
the MRI 1.9.2 by default. If you want, you can run `proj my_project@my_ruby` to select a specific ruby version.

The script will ask you a repository url to run `git clone` if a directory with the project name is not found.
The same will happen for the ruby version; if the ruby version is not installed, you will be asked if you want to run 
`rvm install my_ruby`.

