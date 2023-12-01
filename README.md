# .dotfiles

My configuration files for my Mac. Some things are my own, some are taken from 
others and modified for my own needs. I tried to put credits wherever I could.

I use stow to manage everything, so to put everything in it's place I just cd 
into the root of this repo and run 

```sh
stow .
```

If for whatever reason I want to remove them I can run 
```sh
stow -D .
```

My past configurations for my old linux setup can be found on separate branches if 
you're interested.

Feel free to use and modify anything!

**Some more details:**

## Wezterm

Basic config with Catppuccin theme. I like Wezterm because it's easy to configure, it
uses Lua for configs just like Neovim, and it can go full screen without switching
to a new workspace which I really like.

## Neovim

Initial config based on theprimeagen, but since then I added a lot of my own
modifications, plugins and keybindings. I use lazy.nvim for packages, and I 
try to organise everything neatly, although I might want to rework it some time.

## Tmux

My config is mostly based on 
[theprimeagen's config](https://github.com/ThePrimeagen/.dotfiles/blob/master/tmux/.tmux.conf) 
and [omerxx's dotfiles](https://github.com/omerxx/dotfiles/blob/master/tmux/tmux.conf).

## Starship

Based on [omerxx's config](https://github.com/omerxx/dotfiles/blob/master/starship/starship.toml)

## Github

I have set up two scripts, one to clone a bare repo more neatly for using git worktrees, 
and another one for adding my school email to git.

The script for worktrees is based on [this blog post](https://morgan.cugerone.com/blog/workarounds-to-git-worktree-using-bare-repository-and-cannot-fetch-remote-branches/). 
