# .dotfiles

`.dotfiles` are how you configure and personalize your unix based system. This repo contains dot files I am using.

This repository is not meant to be used directly. `.dotfiles` are private, hence there is a small chance that mine will perfectly fit yours.

## topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.

## What's inside

Then from inside, few rules need to be known:

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/install.sh**: Any file named `install.sh` is executed when you run `script/install`. To avoid being loaded automatically, its extension is `.sh`, not `.zsh`.
- **topic/\*.symlink**: Any file ending in `*.symlink` gets symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.


Some files remain special to the project structure:

- **scripts/:** a bunch of scripts to `install` or `uninstall` your dotfiles.
- **Brewfile:** list of applications to be installed by [Homebrew](http://brew.sh/) and [Homebrew Cask](https://caskroom.github.io/) (this is why you might want to fork this repo instead of using it. Your applications are yours)

## Install

Run this:

```sh
git clone https://github.com/holman/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

`dot` is a simple script that installs some dependencies, sets sane macOS
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.


## Update

From time to time, simply execute `dot` to make sure all your dependencies are up to date.

In case you upgrade your OSX version, you can also reset your preferred default settings with `set-defaults`.

## Thanks

This repository is heavily inspired from [Zack Holman](https://github.com/holman/dotfiles)' dotfiles project. The vast majority of the code here is reusing Zack's.
