# Undertakingyou ZSH config

After some time of using the the DOTZSH framework, I decided that
I wanted to greatly simplify my ZSH rc, and go back to something really simple
and straightforward. This takes a lot of inspiration from
[Phantas0s](https://github.com/Phantas0s/.dotfiles/tree/master/zsh).

## Setup

* Clone this directory to the `~/.config/zsh` directory. Example `git clone
    <repository_url> ~/.config/zsh`
* Link the included `.zshenv` to the home directory.
* Any environmental variables that should not be commited can be added to
  `~/.zshenv-local`. This will be read with the included `.zshenv`.

## Other CLI tools

There are other CLI tools that I am using that this zsh configuration will want
in place. They are:
* fzf
* fd
* bat
* eza
* docker
* aptitude (linux) _This also needs other apt based things_

## System considerations
This works best with [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts). I
really like the Noto Mono version, but whatever you use. This will give a large
list of glyphs.
