if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting

set PATH /usr/local/opt/ruby@2.7/bin $PATH

eval "$(/opt/homebrew/bin/brew shellenv)"

set TOMCAT_DIR "$SDKMAN_DIR/candidates/tomcat/8.5.60"
set FONIC_PROJECT_DIR "$HOME/projects/fonic-portal"

eval "$(zoxide init fish)"
eval "$(rbenv init - fish)"
# eval "$(oh-my-posh init fish --config $HOME/.config/dotfiles/theme.omp.json)"
starship init fish | source


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
alias ls="exa --icons --group-directories-first"
alias la="exa -la --icons --group-directories-first"

alias tomcat="$TOMCAT_DIR/bin/catalina.sh run"
alias tomcat-build-deploy="to-war \
  && rm -rf $TOMCAT_DIR/webapps/ROOT* \
  && rm -rf $TOMCAT_DIR/webapps/rest-api* \
  && cp $FONIC_PROJECT_DIR/portal-frontend/target/FONIC_*.war $TOMCAT_DIR/webapps/ROOT.war \
  && cp $FONIC_PROJECT_DIR/portal-rest-api/target/FONIC_*.war $TOMCAT_DIR/webapps/rest-api.war \
  && tomcat"
alias tomcat-log='tail -f "$TOMCAT_DIR/logs/fonic_portal-$(date +"%Y-%m-%d")-0.log"'
alias to-war='mvn clean install -DskipTests -f $FONIC_PROJECT_DIR/pom.xml'

bass source $HOME/.nvm/nvm.sh

set PATH $HOME/.tmux/plugins/t-smart-tmux-session-manager/bin $PATH
set PATH $HOME/.config/tmux/plugins/t-smart-tmux-session-manager/bin $PATH
set PATH $HOME/.cargo/bin $PATH
