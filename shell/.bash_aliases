os=$(uname -s)
if [[ "$os" == "Linux" ]]; then
    # for linunx 
    date +%Y-%m-%d --date='-1 day -1 year'
    # source ~/.bashrc
    alias open='gnome-open'  #linux Open
elif [[ "$os" == "Darwin" ]]; then
    # for mac
    date -v-1d -v-1y +%Y-%m-%d
    # source ~/.bash_profile
    alias d="aria2c --conf-path=/Users/quiescence/Documents/config-dotfile/configs/aria2.conf -D"
else
    echo "unknown OS"
    exit 1
fi

alias t="/usr/local/bin/fanyi"

alias qihao="source activate qihao-dev"
alias rezsh="source ~/.zshrc"
alias rebash='source ~/.bashrc'

# when conflicts with other libraries
alias conda_setup="conda_setup_" 
# enter into anaconda qihao-dev env.
alias qihao="conda_setup_; source activate qihao-dev"
# enter into anaconda base env.
alias conda-dev="conda_setup_;"