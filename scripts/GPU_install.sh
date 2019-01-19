# sudo apt purge nvidia-*
# sudo add-apt-repository ppa:graphics-drivers/ppa
# sudo apt update
# sudo apt install nvidia-384

# driver
ubuntu-drivers devices
sudo ubuntu-drivers autoinstall
sudo apt install nvidia-384

# CUDA
sudo dpkg -i cuda-repo-ubuntu1604-9-0-local_9.0.176-1_amd64.deb
sudo apt-key add /var/cuda-repo-9-0-local/7fa2af80.pub
sudo apt-get update
sudo apt-get install cuda

echo "export PATH=/usr/local/cuda-9.0/bin${PATH:+:${PATH}}" >> ~/.bashrc
echo "export LD_LIBRARY_PATH=/usr/local/cuda-9.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}" >> ~/.bashrc

# cuDNN
sudo dpkg -i libcudnn7_7.4.2.24-1+cuda9.0_amd64.deb
sudo dpkg -i libcudnn7-dev_7.4.2.24-1+cuda9.0_amd64.deb
sudo dpkg -i libcudnn7-doc_7.4.2.24-1+cuda9.0_amd64.deb

# NCCL
sudo dpkg -i nccl-repo-ubuntu1604-2.3.7-ga-cuda9.0_1-1_amd64.deb
