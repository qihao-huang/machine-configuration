- [machine configuration](#machine-configuration)
  - [Linux](#Linux)
  - [python-package](#python-package)
  - [oh-my-zsh](#oh-my-zsh)
  - [Git](#git)
  - [brew](#brew)
  - [spacevim](#spacevim)
  - [bashrc](#bashrc)
  - [ssh](#ssh)
  - [IDE/Editor](#ideeditor)
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
  - [source channel](#source-channel)
  - [Shadowsocks](#shadowsocks)

# machine configuration
## Linux
- `df -hl`
- `du -h --max-depth=1`
- `tar -zcvf dirname.tar.gz dirname1 dirname1`
- `tar -zcvf dirname.zip dirname` and `tar zxvf dirname.zip`
- `tar -zcvf dirname.zip dirname` and `tar zxvf dirname.tar.gz`


## python-package
- `pip install -U scikit-learn`
- `python -m pip show scikit-learn # to see which version and where scikit-learn is installed`
- `python -m pip freeze # to see all packages installed in the active virtualenv`
- `python -c "import sklearn; sklearn.show_versions()"`
or
- `conda install scikit-learn`
- `conda list scikit-learn`
- `conda list`
- `python -c "import sklearn; sklearn.show_versions()"`

 
## oh-my-zsh
- `sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
- run `chsh-s/bin/zsh` to change default Shell. 
- then reboot.
  
## Git
  ```shell
  git config --global user.name "qihao-huang"
  git config --global user.email "qihao.huang@outlook.com"
  ```
## brew
  ```shell
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  # CN
  /bin/zsh -c "$(curl -fsSL https://gitee.com/cunkai/HomebrewCN/raw/master/Homebrew.sh)"
  sudo chown -R $(whoami) /usr/local/share/doc /usr/local/share/man /usr/local/share/man/man1
  chmod u+w /usr/local/share/doc /usr/local/share/man /usr/local/share/man/man1
  brew install node
  ```
## spacevim
  ```shell
  curl -sLf https://spacevim.org/install.sh | bash
  ```

## bashrc
  - Check my [configs](./configs/.bash_profile)
  ```
  echo ${PATH}
  # add new variables in bashrc/bash_profile
  echo 'alias cc-v="conda activate cc-v"' >> ~/.zshrc
  echo 'export PATH="/Users/quiescence/anaconda3/bin:$PATH"' >> ~/.zshrc
  source ~/.zhsrc
  # or
  rezsh
  ```

## ssh
- `ssh-keygen -t rsa -C "qihao.huang@outlook.com"`
- then run `pbcopy < ~/.ssh/id_rsa.pub` in mac or `cat ~/.ssh/id_rsa.pub | xsel` in ubuntu,
- and copy it into Github settings.
- [vs code ssh remote config](./configs/.ssh_gpufarm_config)

## IDE/Editor 
- VS Code

## Java
- openJDK
    * `brew tap AdoptOpenJDK/openjdk; brew cask install adoptopenjdk11`
    * test with `java -version` and `javac -version`.
- mac java version
    * `echo $(/usr/libexec/java_home)`
    * `export JAVA_HOME=$(/usr/libexec/java_home)` in `~/.bash_profile`
      * e.g. `echo 'export JAVA_HOME=$(/usr/libexec/java_home)' >> ~/.zshrc`

## Special track
### ROS in ubuntu
- [installment](http://wiki.ros.org/kinetic/Installation/Ubuntu)

### openCV
- Version: 3.3.1 embedded in ROS Kinetic (recommend)
  or 
  ``` shell
  pip install opencv-python==3.3.1
  ```

### blender
- download and extract ```*.tar.bz2```
- run `*/bin/python3.5m` for python API.
- set blender Python API if needed.

### meshlab
- `sudo apt install meshlab`.

### PCL
- CPU version
  ```shell
  sudo add-apt-repository ppa:v-launchpad-jochen-sprickerhof-de/pcl
  sudo apt-get update
  sudo apt-get install libpcl-dev
  ```

  param: 
  - `libpcl-dev` for 16.04 or later 
  - `libpcl-all` for 14.04

- For GPU version, compile from source.

## Computing
### Anaconda
-  download `anaconda.sh` from [anaconda](https://www.anaconda.com/distribution/)
-  follow `shell/.bash_profile`
-  `conda create -n qihao-dev python=3.7`

### GPU
- follow `scripts/GPU_install.sh`
- PyTorch 1.4 with CUDA 9.0/10.0: 
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
    
- test multi-GPU:
  - [tensorflow-mgpu-cifar10](https://github.com/qihao-huang/tensorflow-mgpu-cifar10)
  - [pytorch-mgpu-cifar10](https://github.com/qihao-huang/pytorch-mgpu-cifar10)
  
  ```shell  
  https://github.com/qihao-huang/tensorflow-mgpu-cifar10.git
  cd pytorch-mgpu-cifar10
  export CUDA_VISIBLE_DEVICES=0,1 # parallel training with GPUs 0 and 1.
  nohup python train_cifar10.py > log.txt &
  watch -n 0.5 nvidia-smi
  
  # Tensorflow
  import tensorflow.compat.v1 as tf
  tf.disable_v2_behavior()

  # import tensorflow as tf
  print(tf.__version__)

  # https://www.tensorflow.org/install/source#gpu
  # export CUDA_VISIBLE_DEVICES=2
  # conda activate tf-1-14
  # export PATH=/usr/local/cuda-10.1/bin:$PATH
  # export LD_LIBRARY_PATH=/usr/local/cuda-10.1/lib64:$LD_LIBRARY_PATH
  # export LIBRARY_PATH=/usr/local/cuda-10.1/lib64:$LIBRARY_PATH
  # nvcc --vesion
  
  os.environ["CUDA_DEVICE_ORDER"] = "PCI_BUS_ID"
  os.environ["CUDA_VISIBLE_DEVICES"] = "2"

  from tensorflow.python.client import device_lib
  print(device_lib.list_local_devices())

  tf.test.is_gpu_available()
  tf.test.gpu_device_name()
  ```

- tmux:
  [tutorial](http://www.ruanyifeng.com/blog/2019/10/tmux.html)
  ```
  tmux new -s session_name
  nvidia-smi
  # running training
  # ctrl+b d
  # next time
  tmux attach -t session_name
  ```
  
- Tensorboard/Jupyter:
  ```
  # Jupyter 
  jupyter kernelspec list
  # python
  import sys
  print(sys.executable)
  print(sys.version)
  print(sys.version_info)
  
  ```

  ```
  hostname -I 
  # connect Cisco Annyconnect to CS/Univ's VPN
  # open local terminal
  # for Tensorboard
  ssh -L 6006:localhost:6006 <your_gpu_acct_username>@10.XXX.XXX.XXX
  # for Jupyter
  
  # remote:
  gpu-interactive
  hostname -I 
  jupyter-lab --no-browser
  # local:
  ssh -L 8888:localhost:8888 <your_gpu_acct_username>@10.XXX.XXX.XXX
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
