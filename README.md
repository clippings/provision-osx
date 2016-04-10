# Provision OSX

Provision a new OSX machine with dev tools.

## Intro

This is not a dotfiles configuration repository, nor it is a recipe repository. It is just a simple set of commands and tools to set up a developer's machine. Its aim is to reduce the initial time of installing tools and apps on a new machine.

## Install

Clone this project in a location of your choosing:

``` bash
cd ~/Documents
git clone git@github.com:clippings/provision-osx.git
```

## Usage

Run the `./brew.sh` file to install [Homebrew](http://brew.sh/) if it's not installed, update it, install [`brew bundle`](https://github.com/Homebrew/homebrew-bundle) and run it with [`Brewfile`](Brewfile).

*Note*: You are encouraged to read through the [`Brewfile`](Brewfile) and remove things you don't need, don't want, have them installed another way or have better alternatives for.

``` bash
cd provision-osx
./brew.sh
```

## Installed software

You should really read the [`Brewfile`](Brewfile) and check the latest version of it and what it would install.

As an overview it installs:

- CLI tools like GNU coreutils, findutils, latest Bash 4, Bash tab completions
- Latest versions of Git, wget, cURL, OpenSSL
- Image tools like Imagick, optipng, jpegoptim
- Browsers: Google Chrome and Firefox
- Latest versions of Python, Node & npm, PHP and rbenv for Ruby
- Text editors like Vim, Neovim, Atom, Sublime Text. You are free to remove the ones you won't use.
- Vagrant & Virtualbox for virtualisation.
- Communication and design tools - e.g. Slack and Sketch.
- Source Code Pro font


## Updating software

 To update just run the following command:
 
 ``` bash
 brew update && brew upgrade --all
 ```
