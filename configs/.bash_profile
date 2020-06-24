# os=$(uname -s)
# if [[ "$os" == "Linux" ]]; then
#     # for linunx 
#     date +%Y-%m-%d --date='-1 day -1 year'
#     source ~/.bashrc
# elif [[ "$os" == "Darwin" ]]; then
#     # for mac
#     date -v-1d -v-1y +%Y-%m-%d
#     source ~/.bash_profile
# else
#     echo "unknown OS"
#     exit 1
# fi 

alias t="/usr/local/bin/fanyi"
alias rezsh="source ~/.zshrc"
alias rebash='source ~/.bashrc'

# added by Anaconda3 installer
export PATH="/usr/local/sbin:$PATH"
export PATH="/Users/quiescence/anaconda3/bin:$PATH"
# . /Users/quiescence/anaconda3/etc/profile.d/conda.sh

# export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
# export HOMEBREW_NO_AUTO_UPDATE=trueexport PATH="$HOME/.jenv/bin:$PATH"

export JAVA_HOME=$(/usr/libexec/java_home)

# export PATH=/userhome/34/h3567721/anaconda3/bin:$PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/userhome/34/h3567721/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/userhome/34/h3567721/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/userhome/34/h3567721/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/userhome/34/h3567721/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH=/usr/local/cuda/bin:$PATH
export PATH=/userhome/34/h3567721/anaconda3/bin:$PATH

alias cdgeo="cd /userhome/34/h3567721/projects/Depth/GeoNet"
alias rebash="source ~/.bashrc"

export CUDA_VISIBLE_DEVICES=0

user_path="/userhome/34/h3567721"

source activate geonet-v
alias pytorch-v="conda activate pytorch-v" # pytorch1.4, py3.6
alias geonet-v="conda activate geonet-v" #  tf1.14, py2.7
# alias base="conda activate base"

alias gpu="gpu-interactive"
alias gpu-1="srun --gres=gpu:1 --cpus-per-task=4 --pty --mail-type=ALL bash"
alias gpu-2="srun --gres=gpu:2 --cpus-per-task=8 --pty --mail-type=ALL bash"
alias gpu-3="srun --gres=gpu:3 --cpus-per-task=12 --pty --mail-type=ALL bash"
alias gpu-4="srun --gres=gpu:4 --cpus-per-task=16 --pty --mail-type=ALL bash"
