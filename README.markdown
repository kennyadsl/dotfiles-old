## My dotfiles (OS X, bash, git, RVM, Vim, Sublime Text 2)

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

### Proj: easy ruby projects switcher

#### Usage

```bash
$ proj project_name
```

or, if you want to use a specific gemset:

```bash
$ proj project_name@1.9.3-p125
```

#### What does it do?

- Go to project_name folder
- Switch to @project_name gemset

It will use the MRI 1.9.2 by default.  
The script will ask you a repository url to run `git clone` if a directory with the project name is not found.
The same will happen for the ruby version; if the ruby version is not installed, you will be asked if you want to run 
`rvm install my_ruby`.

#### Requirements

- You are working with RVM
- You have your projects in `~/Code/` folder
- You have a specific gemset for each project (named as the project folder)

