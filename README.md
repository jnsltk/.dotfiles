# .dotfiles

My configuration files for my Mac and Linux. Some things are my own, some are taken from 
others and modified for my own needs. I tried to put credits wherever I could.

I use stow to manage everything, with the help of bash scripts to automate it. Depending on 
whether I'm on Mac or Linux, I can run 

```sh
./macos
```

or
```sh
./setup_arch
```

This allows me to separate the platform specific config files, but still share the ones
that are the same, for example for vim.

Feel free to use and modify anything!

**Some more details:**

## Neovim

Initial config based on theprimeagen's dotfiles, but since then I added a lot of my own
modifications, plugins and keybindings. I use lazy.nvim for packages, and I 
try to organise everything neatly, although I might want to rework it some time.

## Tmux

My config is mostly based on 
[theprimeagen's config](https://github.com/ThePrimeagen/.dotfiles/blob/master/tmux/.tmux.conf) 
and [omerxx's dotfiles](https://github.com/omerxx/dotfiles/blob/master/tmux/tmux.conf).

## Git

I have set up two scripts, one to clone a bare repo more neatly for using git worktrees, 
and another one for adding my school email to git.

The script for worktrees is based on [this blog post](https://morgan.cugerone.com/blog/workarounds-to-git-worktree-using-bare-repository-and-cannot-fetch-remote-branches/). 

## Other tools I use

I use iTerm2 as my terminal emulator, and this repo includes a modified color scheme based on solarized dark and solarized Osaka.
