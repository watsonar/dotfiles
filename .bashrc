# .bashrc

# source the anvio port:

source /project2/meren/VIRTUAL-ENVS/shared/00_load_all.sh

# User specific aliases and functions:

alias anvi-activate-master="conda activate /project2/meren/VIRTUAL-ENVS/anvio-master"
alias anvi-activate-5.5="conda activate /project2/meren/VIRTUAL-ENVS/anvio-5.5"

alias q="squeue --partition=meren -o '%.18i %.9P %.8j %.8u %.8T %.10M %.9l %.6D %R %.5C %.13m %.15N'"

# thingy that let's me do `cd meren` from anywhere to get to `~/project2/meren`:

export CDPATH=.:~:/project2

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/software/Anaconda3-5.3.0-el7-x86_64/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/software/Anaconda3-5.3.0-el7-x86_64/etc/profile.d/conda.sh" ]; then
        . "/software/Anaconda3-5.3.0-el7-x86_64/etc/profile.d/conda.sh"
    else
        export PATH="/software/Anaconda3-5.3.0-el7-x86_64/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
