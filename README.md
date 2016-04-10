# Provision OSX

Provision a new OSX machine with dev tools.

## Intro

This is not a dotfiles configuration repository, nor it is a recipe repository. It is just a simple set of commands and tools to set up a developer's machine. Its aim is to reduce the initial time of installing tools and apps on a new machine.

## Install

Clone this project in a folder on your of your choosing:

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
