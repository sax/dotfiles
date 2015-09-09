dotfiles
========

## Usage

```shell
git config --global include.path ~/.dotfiles/git/gitconfig

for file in $(ls ~/.dotfiles/bash_it); do
  ln -sf ~/.dotfiles/bash_it/${file} ~/.bash_it/custom/
done

ln -s ~/.dotfiles/chef ~/.chef
```
