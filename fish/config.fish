if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting

eval "$(/opt/homebrew/bin/brew shellenv)"

eval "$(zoxide init fish)"
eval "$(oh-my-posh init fish --config $HOME/.config/dotfiles/theme.omp.json)"

alias ibrew='arch --x86_64 /usr/local/Homebrew/bin/brew'
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
alias ls="exa --icons"
alias la="exa -la --icons"

set PATH $HOME/.tmux/plugins/t-smart-tmux-session-manager/bin $PATH
set PATH $HOME/.config/tmux/plugins/t-smart-tmux-session-manager/bin $PATH
set PATH $HOME/.cargo/bin $PATH
