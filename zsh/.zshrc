export TERM=xterm-256color
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="random"

# CASE_SENSITIVE="true"

# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(
  git
  docker
  django
  pip
  pyenv
  pylint
  python
  redis-cli
  tmux
)

source $ZSH/oh-my-zsh.sh

# export MANPATH="/usr/local/man:$MANPATH"
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

#emacs
alias sem='sudo emacs -nw'
alias em='emacsclient'
alias emt='emacsclient -t'

alias zshrc='emacsclient ~/.zshrc'
alias tm='tmux new-session -s'
alias ldm='sudo systemctl start lightdm.service'
alias s='startx'
alias iy='sudo apt-get install -y'

# django
alias run_='python manage.py runserver'

# virtualenvs
VIRTUALENVWRAPPER_PYTHON='/usr/bin/python3'
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/work
source ~/.local/bin/virtualenvwrapper.sh

# pip
export PIP_REQUIRE_VIRTUALENV=true
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache
gpip() {
    PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

# fonts
source ~/.fonts/*.sh

# path
PATH=$PATH:~/Downloads/Linux/node/bin
PATH=$PATH:~/Downloads/Linux/elasticsearch/bin
PATH=$PATH:~/.local/bin
PATH=$PATH:~/work/python/python-scripts
PATH=$PATH:~/mongodb/mongodb-linux-x86_64-3.6.2/bin

# tree
tree='tree -L 1'

# folder shortcuts
alias dlab_=/home/alamin/work/python/django/Django-Lab
alias port_='/home/alamin/work/python/django/portfolio/'

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

# if [ -f ~/.git-completion.bash ]; then
#     source ~/.git-completion.bash
# fi

# cpp
alias _cp='/home/alamin/work/Competitive-Programming/'
alias _cpp='g++ -std=c++11'


tmux a
clear
neofetch --ascii_distro redhat --ascii_colors distro
