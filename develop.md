# machine configuration
## Xcode-mac
`xcode-select --install`

## Java-mac/ubuntu
- openJDK

## IDE/Editor
- Clion & Pycharm: run `tar -zxvf *.tar.gz` then `./clion.sh`  or `./pycharm.sh` under `bin` dir.
- VS Code with extension:Python, C++, LaTeX Workshop, YAML, Anaconda Extension Pack, TODO Highlight, TODO Tree
- 
## blender
- download and extract ```*.tar.bz2```
- run `*/bin/python3.5m` for python API.

## meshlab
download from software center and run it from terminal `meshlab`


## PCL
```
sudo add-apt-repository ppa:v-launchpad-jochen-sprickerhof-de/pcl
sudo apt-get update
sudo apt-get install libpcl-dev
```
bb
param: `dev` for 16.04 or later with `all` for 14.04

## ssh
-  ```ssh-keygen -t rsa -C "email"```
-  paste ```~/.ssh/id_rsa.pub``` or public key with the other name into ssh keys in Github/GitLab/... settings.

### NN Computing
- GPU driver
```
sudo apt purge nvidia-*
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
sudo apt install nvidia-384
```

or by 

```
ubuntu-drivers devices
sudo ubuntu-drivers autoinstall
sudo apt install nvidia-384
```
param: 384 if the return from `ubuntu-drivers devices`

- CUDA

download CUDA Toolkit 9.0/10.0 from developer.nvidia.com
```
sudo dpkg -i cuda-repo-ubuntu1604-9-0-local_9.0.176-1_amd64.deb
sudo apt-key add /var/cuda-repo-9-0-local/7fa2af80.pub
sudo apt-get update
sudo apt-get install cuda

export PATH=/usr/local/cuda-9.0/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-9.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
```

- cuDNN

download runtime,developer libs and code samples from https://developer.nvidia.com/cudnn

run: `sudo dpkg -i libcudnn7_7.4.2.24-1+cuda9.0_amd64.deb` also the other two `*.deb` file.

- NCCL

same as the above instructions.

-  Pytorch
Pytorch1.0 with CUDA9.0: `conda install pytorch torchvision -c pytorch`


## Anaconda
-  run ```./install*.sh```
-  ```source ~/.bashrc``` or ```source ~/.bash_profile``` or other shell.
-  ```conda create -n qihao-dev```

## Git
- ```apt-get install git```
- tips
```
Command line instructions

Git global setup
git config --global user.name "Qihao.Huang"
git config --global user.email "qihao.huang@outlook.com"

Create a new repository
git clone git@gitlab.com:quiescence/test.git
cd test
touch README.md
git add README.md
git commit -m "add README"
git push -u origin master

Existing folder
cd existing_folder
git init
git remote add origin git@gitlab.com:quiescence/test.git
git add .
git commit -m "Initial commit"
git push -u origin master

Existing Git repository
cd existing_repo
git remote rename origin old-origin
git remote add origin git@gitlab.com:quiescence/test.git
git push -u origin --all
git push -u origin --tags
```
## source chaneel
- conda: 
```
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main/
conda config --set show_channel_urls yes
```

- pip:
run ```touch pip.conf``` in ```~/.pip/``` with content 
```
[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple
```
-  brew:
```
cd "$(brew --repo)"
git remote set-url origin https://mirrors.ustc.edu.cn/brew.git
cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
git remote set-url origin https://mirrors.ustc.edu.cn/homebrew-core.git
echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles' >> ~/.bash_profile
source ~/.bash_profile
```


- apt: ```sudo vim /etc/apt/source.list``` with https://www.cnblogs.com/bovenson/p/5752213.html


## Shadowsocks
- https://shadowsocks.org/en/download/clients.html
- ubuntu
1. download ss client
```
sudo add-apt-repository ppa:hzwhuang/ss-qt5
sudo apt-get update
sudo apt-get install shadowsocks-qt5
```
2. download chromium from software center
3. set network proxy also config ss-client.


## Misc
- input method: fcitx, sogou pinyi
- music: spotify, net-cloud-music
- download: `aria2c --conf-path=/PATH/TO/aria2.conf -D`