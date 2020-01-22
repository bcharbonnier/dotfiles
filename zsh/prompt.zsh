autoload colors && colors

set_prompt () {
  __posh_git_ps1 $'$fg[cyan]%}$USER@%m%{$reset_color%} %~ ' $'\n› '
  export RPROMPT="%{$fg_bold[cyan]%}%{$reset_color%}"
}

# http://superuser.com/a/315029/4952
# Set Apple Terminal.app to resume directory... still necessary 2020-01-22
function chpwd {
  if [[ $TERM_PROGRAM == "Apple_Terminal" ]] && [[ -z "$INSIDE_EMACS" ]] {
    local SEARCH=' '
    local REPLACE='%20'
    local PWD_URL="file://$HOSTNAME${PWD//$SEARCH/$REPLACE}"
    printf '\e]7;%s\a' "$PWD_URL"
  }
}

precmd() {
  title "zsh" "%m" "%55<...<%~"
  set_prompt
}