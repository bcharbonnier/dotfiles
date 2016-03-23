# .dotfiles

`.dotfiles` are how you configure and personalize your unix based system. This repo contains dot files I am using.

This repository is not meant to be used directly. `.dotfiles` are private, hence there is a small chance that mine will perfectly fit yours.

Fork it, change it to suit your needs. That's it.

## What's inside

Everything is regrouped by topic areas. Such as `bash`, `git`, `osx` or `vim`. If you need to create a new topic, simply create a new folder.

Then from inside, few rules need to be known:

- any file with an extension of `.symlink` will get symlinked without extension as a `.dotile` to your `$HOME` directory when `scripts/install` is run.
- any file with an extension of `.bash` will be processed as follow:
  * `path.bash` are loaded first. They are expected to setup `$PATH` or equivalent.
  * `env.bash` get loaded to your environment in second position.
  * anything else get sourced.


Some files remain special to the project structure:

- **bin/:** anything in `bin/` will get added to your `$PATH` and be made available from the cli.
- **scripts/:** a bunch of scripts to `install` or `uninstall` your dotfiles. `update` is a bit special, it will be implicitely called from `bin/dotfiles`.
- **Brewfile:** list of applications to be installed by [Homebrew](http://brew.sh/) and [Homebrew Cask](https://caskroom.github.io/) (this is why you might want to fork this repo instead of using it. Your applications are yours)

## Install

Simply run this:

    git clone https://github.com/<yourfork>/dotfiles.git ~/.dotfiles
    cd ~/.dotfiles
    scripts/install

This will setup all your dotfiles, basically creating symlink to your home directory. Then everything can be configured from within `~/.dotfiles`.

The entry point file you might want to tweak is `bash/bash_profile.symlink`.


## Update

From time to time, simply execute `dotfiles` to make sure all your dependencies are up to date.

In case you upgrade your OSX version, you can also reset your preferred default settings with `set-defaults`.

## Thanks

This repository is heavily inspired from [Zack Holman](https://github.com/holman/dotfiles)' dotfiles project. The vast majority of the code here is reusing Zack's.
