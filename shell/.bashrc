# function setenv {
#    echo "$1" > ~/.env
# } 

#-----------conda------------
function conda_setup_ ()
{
    # added by Anaconda3 2018.12 installer
    # >>> conda init >>>
    # !! Contents within this block are managed by 'conda init' !!
    __conda_setup="$(CONDA_REPORT_ERRORS=false '/home/quiescence/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
    if [ $? -eq 0 ]; then
        \eval "$__conda_setup"
    else
        if [ -f "/home/quiescence/anaconda3/etc/profile.d/conda.sh" ]; then
            . "/home/quiescence/anaconda3/etc/profile.d/conda.sh"
            CONDA_CHANGEPS1=false conda activate base
        else
            \export PATH="/home/quiescence/anaconda3/bin:$PATH"
        fi
    fi
    # unset __conda_setup
    # <<< conda init <<<
}

#-----------CUDA------------
export PATH=/usr/local/cuda-9.0/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-9.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

#-----------git------------
gituser()
{
  if [ $# -eq 0 ]; then
    echo 'Current user is: '
    git config user.name
    git config user.email
    echo 'Usage: gituser <github_id>'
    return 0
  fi

  case $1 in
  qihao96) email=qihao.huang@outlook.com ;;

  *) echo "$1 is not in the list, please enter your athena id"; return 1 ;;
  esac
  
  git config --global user.name $1
  git config --global user.email $email
}

function gitcache()
{
  let "cache_time = $1 * 3600"
  git config --global credential.helper 'cache --timeout=$cache_time'
  
  if [ $1 -gt 1 ];
  then
    echo "Set cache time = $1 hours" ;
  else
    echo "Set cache time = $1 hour";
  fi
}