alias ls="ls -G"

if [ -f ~/.localrc ]; then
  source ~/.localrc
fi

# Include git auto complete
source ~/git-completion.bash

export NVM_DIR="/Users/zachtoolson/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
