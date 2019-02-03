# machine configuration
## ssh
-  `ssh-keygen -t rsa -C "email"`,
-  then run `pbcopy < ~/.ssh/id_rsa.pub` in mac or `cat ~/.ssh/id_rsa.pub | xsel` in ubuntu,
- and copy it in Github/GitLab/... settings.

## Xcode for mac
- `xcode-select --install`.

## Git for ubuntu
- `sudo apt install git`.

## IDE/Editor 
- Clion & Pycharm: 
    * run `tar -zxvf *.tar.gz`,
    * then run `./clion.sh`  or `./pycharm.sh` under `bin` dir.
- VS Code with extension:
    * Python
    * C/C++
    * LaTeX Workshop
    * YAML
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
- 3.3.1 with ROS (recommend) or compile 4.0 from source,
- `pip install opencv-python` with anaconda in mac, specially with `pip3 install --user opencv-python` in ubuntu without anaconda. NOT INSTALL anaconda in ubuntu.

### blender
- download and extract ```*.tar.bz2```
- run `*/bin/python3.5m` for python API,
- set blender Python API if needed.

### meshlab
- download from software center and run it from terminal `meshlab`,
- or just `sudo apt install meshlab`.

### PCL
CPU version
```shell
sudo add-apt-repository ppa:v-launchpad-jochen-sprickerhof-de/pcl
sudo apt-get update
sudo apt-get install libpcl-dev
```

param: `dev` for 16.04 or later with `all` for 14.04, or follow by its GPU version and compile it from source.

## Computing
### Anaconda
-  run ```./install*.sh```
-  ```source ~/.bashrc``` or ```source ~/.bash_profile``` or other shell.
-  ```conda create -n qihao-dev```

### GPU
- `GPU_install.sh`
-  Pytorch1.0 with CUDA9.0: `conda install pytorch torchvision -c pytorch` with anaconda, or `pip3 install torch torchvision` using pip.
- test with:
    ```python
    import torch 
    print(torch.__version__) # Version
    print(torch.cuda.is_available()) # GPU
    ```

## source chaneel
- follow `source_channel.sh`.

## Shadowsocks
- download desktop [client](https://shadowsocks.org/en/download/clients.html),
- ubuntu:
  1. download ss client
    ```shell
    sudo add-apt-repository ppa:hzwhuang/ss-qt5
    sudo apt-get update
    sudo apt-get install shadowsocks-qt5
    ```
  2. download chromium from software center
  3. set network proxy for auto mode with `autoproxy.pac` like `file:///home/quiescence/Documents/config-dotfile/dotfiles/autoproxy.pac`
   
- mac: ShadowsocksX-NG at GitHub.