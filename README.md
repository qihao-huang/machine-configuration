start with `bootstrap.sh`
```shell
sh -c "$(curl -fsSL https://github.com/qihao96/config-dotfile/tree/master/scripts/bootstrap.sh)"
```
- [machine configuration](#machine-configuration)
  - [oh-my-zsh](#oh-my-zsh)
  - [Git](#Git)
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
- run `chsh-s/bin/zsh` to change default Shell. 
- then reboot.
  
## Git
```shell
git config --global user.name "qihao96"
git config --global user.email "qihao.huang@outlook.com"
```

## ssh
-  `ssh-keygen -t rsa -C "qihao.huang@outlook.com"`
-  then run `pbcopy < ~/.ssh/id_rsa.pub` in mac or `cat ~/.ssh/id_rsa.pub | xsel` in ubuntu,
- and copy it into Github/GitLab/... settings.

## IDE/Editor 
- Clion & Pycharm: 
    * run `tar -zxvf *.tar.gz`,
    * then run `./clion.sh`  or `./pycharm.sh` under `bin` dir.

## sync VS code
- extensions:
    * Setting Sync: 
       - Gist ID `42455e097ef29dfc7cfeaaf1a937ace6`
       - TOKEN: `c166366c023a9ac5a13b89b35f8120c17a505bdf` 
    * `Shift+Ctrl+p` in ubuntu or `command+shift+p` in mac

## Java
- openJDK
    * test with `java -version` and `javac -version`.

## Special track
### ROS in ubuntu
- [installment](http://wiki.ros.org/kinetic/Installation/Ubuntu)

### openCV
- Version: 3.3.1 with ROS Kinetic (recommend) or compile version 4.0 from source.

``` shell
pip install opencv-python # anaconda in mac ubuntu
pip3 install --user opencv-python # ubuntu without anaconda.
```

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

param: 
- `libpcl-dev` for 16.04 or later 
- `libpcl-all` for 14.04

NOTE: For GPU version, compile from source.

## Computing
### Anaconda
-  download `anaconda.sh` from [anaconda](https://www.anaconda.com/distribution/)
-  follow `shell/.bashrc`
-  `conda create -n qihao-dev python=3.6`

### GPU
- follow `scripts/GPU_install.sh`
- PyTorch 1.0 with CUDA 9.0/10.0: 
  install PyTorch using conda, DONT install it using system's python.
  ```shell
  conda install pytorch torchvision -c pytorch # anaconda's conda
  # or
  pip install torch torchvision  # anaconda's pip
  ```
- test with:
    ```python
    import torch
    print(torch.__version__) # Version
    print(torch.cuda.is_available()) # GPU is available
    print(torch.cuda.device_count())
    print(torch.cuda.get_device_name(0))
    print(torch.cuda.current_device())
    ```

## source channel
- follow `scripts/source_channel.sh`

## Shadowsocks
- download desktop [client](https://shadowsocks.org/en/download/clients.html)
- ubuntu:
  1. download shadowsocks client
      ```shell
      sudo add-apt-repository ppa:hzwhuang/ss-qt5
      sudo apt-get update
      sudo apt-get install shadowsocks-qt5
      ```
  2. download chromium from software center.
  3. set network proxy with auto mode using `file:///path/to/configs/autoproxy.pac`
   
- mac: download `ShadowsocksX-NG` from GitHub.
