## My dotfiles

Rakefile install script and many other things, are inspired (copied somewhere) from the [Holman dotfiles repo](https://github.com/holman/dotfiles)

### install

- `git clone git://github.com/kennyadsl/dotfiles ~/.dotfiles`
- `cd ~/.dotfiles`
- `rake install`

The install rake task will symlink the appropriate files in `.dotfiles` to your
home directory. Everything is configured and tweaked within `~/.dotfiles`,
though.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

You can also create a folder into your Dropbox folder to keep *secret* dotfiles.
Default is ~/Dropbox/Config/dotfiles but you can customize it into the Rakefile

