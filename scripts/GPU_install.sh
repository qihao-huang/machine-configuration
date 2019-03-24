# CUDA 9

# driver
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

# ------------------------------------------------------------------

# CUDA 10

# install driver by local *.run file


# CUDA, two ways: *.deb or local *.run
# install driver too in the process of CUDA
# with configuration choices using local *.run file
sudo dpkg -i cuda-repo-ubuntu1604-10-0-local-10.0.130-410.48_1.0-1_amd64.deb
sudo apt-key add /var/cuda-repo-10-0-local-10.0.130-410.48/7fa2af80.pub
sudo apt-get update
sudo apt-get install cuda
echo "export PATH=/usr/local/cuda-10.0/bin${PATH:+:${PATH}}" >> ~/.bashrc
echo "export LD_LIBRARY_PATH=/usr/local/cuda-10.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}" >> ~/.bashrc
source ~/.bashrc

# cd /usr/local/cuda-10.0/samples/1_Utilities/deviceQuery
# make
# ./deviceQuery

# cudnn
tar -zxvf cudnn-10.0-linux-x64-v7.4.2.24.tgz
sudo cp cuda/include/cudnn.h /usr/local/cuda/include/
sudo cp cuda/lib64/libcudnn* /usr/local/cuda/lib64/ 
sudo chmod a+r /usr/local/cuda/include/cudnn.h
sudo chmod a+r /usr/local/cuda/lib64/libcudnn*
cat /usr/local/cuda/include/cudnn.h | grep CUDNN_MAJOR -A 2 # check cudnn version

sudo dpkg -i libcudnn7_7.4.2.24-1+cuda10.0_amd64.deb
sudo dpkg -i libcudnn7-dev_7.4.2.24-1+cuda10.0_amd64.deb
sudo dpkg -i libcudnn7-doc_7.4.2.24-1+cuda10.0_amd64.deb


# cd /usr/local/cuda-10.0/lib64
# sudo chmod +r libcudnn.so.7.4.2
# sudo ln -sf libcudnn.so.7.4.2 libcudnn.so.7
# sudo ln -sf libcudnn.so.7 libcudnn.so
# sudo ldconfig
# sudo cp -r /usr/src/cudnn_samples_v7/ ~/cudnn_test
# cd ~/cudnn_test
# sudo make clean
# sudo make
# ./mnistCUDNN

# NCCL
sudo dpkg -i nccl-repo-ubuntu1604-2.4.2-ga-cuda10.0_1-1_amd64.deb