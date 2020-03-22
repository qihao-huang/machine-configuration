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