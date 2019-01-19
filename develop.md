# machine configuration
## ssh
-  ```ssh-keygen -t rsa -C "email"```
-  paste ```~/.ssh/id_rsa.pub``` or public key with the other name into ssh keys in Github/GitLab/... settings.

## Xcode for mac
- `xcode-select --install`

## Git for ubuntu
- ```sudo apt install git```

## IDE/Editor 
- Clion & Pycharm: run `tar -zxvf *.tar.gz` then `./clion.sh`  or `./pycharm.sh` under `bin` dir.
- VS Code with extension:Python, C/C++, LaTeX Workshop, YAML, Anaconda Extension Pack, TODO Highlight, TODO Tree, autoDocstring, Doxygen Documentation, LaTexWorkshop 

## Java-mac/ubuntu
- openJDK

### Special track
## ROS
- [installment](http://wiki.ros.org/kinetic/Installation/Ubuntu)

## openCV
- 3.3.1 with ROS
- or compile 4.0
- `pip install opencv-python`

## blender
- download and extract ```*.tar.bz2```
- run `*/bin/python3.5m` for python API.

## meshlab
- download from software center and run it from terminal `meshlab`

## PCL
```
sudo add-apt-repository ppa:v-launchpad-jochen-sprickerhof-de/pcl
sudo apt-get update
sudo apt-get install libpcl-dev
```

param: `dev` for 16.04 or later with `all` for 14.04

or follow by its GPU source version and compile.


### Computing
- `GPU_install.sh`
-  Pytorch1.0 with CUDA9.0: `conda install pytorch torchvision -c pytorch`


## Anaconda
-  run ```./install*.sh```
-  ```source ~/.bashrc``` or ```source ~/.bash_profile``` or other shell.
-  ```conda create -n qihao-dev```

## source chaneel
- `source_channel.sh`

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
3. set network proxy for auto mode with `autoproxy.pac` like `file:///home/quiescence/Documents/config-dotfile/dotfiles/autoproxy.pac`