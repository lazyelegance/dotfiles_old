

[ -z "$PS1" ] && return

if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

export DOTFILES_DIR="$HOME/.dotfiles"

for DOTFILE in "$DOTFILES_DIR"/system/.{functions,function_*,path,env,alias,completion,grep,prompt,nvm,rvm,custom}; do
  [ -f "$DOTFILE" ] && . "$DOTFILE"
done
eval $(/usr/libexec/path_helper -s)
