start with `bootstrap.sh`
```shell
sh -c "$(curl -fsSL https://github.com/qihao96/config-dotfile/tree/master/scripts/bootstrap.sh)"
```
- [machine configuration](#machine-configuration)
  - [oh-my-zsh](#oh-my-zsh)
  - [ssh](#ssh)
  - [IDE/Editor](#ideeditor)
  - [sync VS code](#sync-vs-code)
  - [Java](#java)
  - [Special track](#special-track)
    - [ROS in ubuntu](#ros-in-ubuntu)
    - [openCV](#opencv)
    - [blender](#blender)
    - [meshlab](#meshlab)
    - [PCL](#pcl)
  - [Computing](#computing)
    - [Anaconda](#anaconda)
    - [GPU](#gpu)
  - [source chaneel](#source-chaneel)
  - [Shadowsocks](#shadowsocks)

# machine configuration

## oh-my-zsh
- `sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
- run `chsh-s/bin/zsh` to change default Shell then reboot.
  
## ssh
-  `ssh-keygen -t rsa -C "qihao.huang@outlook.com"`,
-  then run `pbcopy < ~/.ssh/id_rsa.pub` in mac or `cat ~/.ssh/id_rsa.pub | xsel` in ubuntu,
- and copy it into Github/GitLab/... settings.

## IDE/Editor 
- Clion & Pycharm: 
    * run `tar -zxvf *.tar.gz`,
    * then run `./clion.sh`  or `./pycharm.sh` under `bin` dir.

## sync VS code
- extensions:
    * Python
    * C/C++
    * LaTeX Workshop
    * YAML
    * CMake
    * CMake Tools
    * Setting Sync
    * Anaconda Extension Pack
    * TODO Highlight
    * TODO Tree
    * autoDocstring
    * Doxygen Documentation
    * Markdown All in One
    * Matlab and matlab-formmater

## Java
- openJDK
    * test with `java -version` and `javac -version`.

## Special track
### ROS in ubuntu
- [installment](http://wiki.ros.org/kinetic/Installation/Ubuntu)

### openCV
- Version: 3.3.1 with ROS Kinetic (recommend) or compile 4.0 from source.
- `pip install opencv-python` with anaconda in mac, specially with `pip3 install --user opencv-python` in ubuntu without anaconda.

### blender
- download and extract ```*.tar.bz2```
- run `*/bin/python3.5m` for python API.
- set blender Python API if needed.

### meshlab
- download from software center and run it from terminal `meshlab`
- or just `sudo apt install meshlab`.

### PCL
CPU version
```shell
sudo add-apt-repository ppa:v-launchpad-jochen-sprickerhof-de/pcl
sudo apt-get update
sudo apt-get install libpcl-dev
```

param: `libpcl-dev` for 16.04 or later with `libpcl-all` for 14.04, or follow by its GPU version and compile it from source.

## Computing
### Anaconda
-  download `anaconda.sh`
-  `source ~/.bashrc` or `source ~/.bash_profile` or other shell.
-  `conda create -n qihao-dev`

### GPU
- follow `GPU_install.sh`
- Pytorch1.0 with CUDA9.0: `conda install pytorch torchvision -c pytorch` with anaconda, or `pip3 install torch torchvision` using pip.
- test with:
    ```python
    import torch
    print(torch.__version__) # Version
    print(torch.cuda.is_available()) # GPU
    ```

## source chaneel
- follow `source_channel.sh`

## Shadowsocks
- download desktop [client](https://shadowsocks.org/en/download/clients.html)
- ubuntu:
  1. download ss client
    ```shell
    sudo add-apt-repository ppa:hzwhuang/ss-qt5
    sudo apt-get update
    sudo apt-get install shadowsocks-qt5
    ```
  2. download chromium from software center.
  3. set network proxy for auto mode with `autoproxy.pac`
   
- mac: download `ShadowsocksX-NG` from GitHub.