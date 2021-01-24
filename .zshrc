EDITOR=micro
# History stuff
HIST_STAMPS="yyyy-mm-dd"
HISTFILE=~/.zsh/zhistory
HISTSIZE=100000
SAVEHIST=100000
setopt autocd

source ~/antigen/antigen.zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

# Language export.
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Imports other config files
for file in ~/.zsh/*.zsh; do
  source "$file"
done

export PATH=/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export GPG_TTY=$(tty)
eval "$(starship init zsh)"

antigen apply
