os=$(uname -s)
if [[ "$os" == "Linux" ]]; then
    # for linunx 
    date +%Y-%m-%d --date='-1 day -1 year'
    # source ~/.bashrc
    alias open='gnome-open'  # install gnome-open first
elif [[ "$os" == "Darwin" ]]; then
    # for mac
    date -v-1d -v-1y +%Y-%m-%d
    # source ~/.bash_profile
else
    echo "unknown OS"
    exit 1
fi

alias t="/usr/local/bin/fanyi" # install fanyi first

alias qihao="source activate qihao-dev"
alias rezsh="source ~/.zshrc"
alias rebash='source ~/.bashrc'
