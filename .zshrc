alias tmn="tmux new -s"
alias tma="tmux attach"
alias tmk="tmux kill-session"
alias tml="tmux list"
alias vim="nvim"
alias vi="nvim"
alias gs="git status"
alias gc="git commit"
alias gp="git push"
alias ga="git add"
alias gaa="git add -A"

eval "$(zoxide init zsh)"
eval "$(oh-my-posh init zsh --config $HOME/.config/dotfiles/theme.omp.json)"

# ~/.tmux/plugins
export PATH=$HOME/.tmux/plugins/t-smart-tmux-session-manager/bin:$PATH
# ~/.config/tmux/plugins
export PATH=$HOME/.config/tmux/plugins/t-smart-tmux-session-manager/bin:$PATH
