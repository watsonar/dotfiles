# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

# Making things aesthetically pleasing:

reset=$(tput sgr0)  # \e[0m
black=$(tput setaf 0)   # \e[30m
red=$(tput setaf 1) # \e[31m
green=$(tput setaf 2)   # \e[32m
yellow=$(tput setaf 3)  # \e[33m
blue=$(tput setaf 4)    # \e[34m
magenta=$(tput setaf 5) # \e[35m
cyan=$(tput setaf 6)    # \e[36m
white=$(tput setaf 7)   # \e[35=7m

export TERM="xterm-color"
export PS1='$(basename "$CONDA_DEFAULT_ENV") \[$green\]➜ \[$cyan\]\u@\h\[$white\]:\[$green\]\W\[$reset\] $ '

alias ls='ls --color'
LS_COLORS='di=35:ln=34:so=32:pi=31:ex=36:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'
export LS_COLORS

# PATH stuff:

PATH=$PATH:$HOME/bin
export PATH

# cd to meren lab home directory upon source:

cd /project2/meren/

# fix issue with long bash commands not wrapping to a seocn dline properly:

shopt -s checkwinsize
