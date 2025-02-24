# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt autocd
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/bignat/.zshrc'

autoload -Uz compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
compinit
# End of lines added by compinstall

alias c='clear; fastfetch'
alias l='eza --color=always --long --git --icons=always'
alias la='eza --color=always --long --git --icons=always --all'
alias cdcours='cd ~/Documents/scolaire/2024-2025_si3/cours/'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias shutdown='shutdown now'
alias pipes='pipes.sh -p 8 -R -K -r 10000'
alias gl='git log --all --decorate --oneline --graph'
alias gs='git status'
alias i='sudo pacman -S'

bindkey -e

fastfetch

eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/mytheme.json)"
eval "$(zoxide init --cmd cd zsh)"
eval "$(thefuck --alias)"
