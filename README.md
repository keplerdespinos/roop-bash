# roop-bash
Bash Script for running Roop in Terminal

# How to Install 

**Prerequesites:**
- Ubuntu 20.04 LTS Server
- [Roop](https://github.com/s0md3v/roop) and dependencies installed
  - Roop directory should be in `/home/ubuntu/`

**Installation:**

1. Install Roop
2. Download the script and copy to `/home/ubuntu`
3. Set permissions to make it executable
> sudo chmod 755 `/opt/run-roop.sh`

4. Add the alias to your shell profile
   > sudo vi ~/.bashrch
   4b. Insert this line `alias run-roop='/opt/run-roop.sh' at the bottom of the file
   
5. Quit and relaunch terminal
6. Test your new command `run-roop`


# Installing Roop

**Prerequesites:**

-Python 3.10.x (Comes with Ubuntu 20.04 LTS)
-Pip
-Git
-[FFmpeg](https://linuxize.com/post/how-to-install-ffmpeg-on-ubuntu-20-04/)
  (https://mulcas.com/ffmpeg-error-while-loading-shared-libraries-libavdevice-so-58/)

**Installation:**

1. > cd `/home/ubuntu`
2. > git clone https://github.com/s0md3v/roop
3. > sudo apt-get install python3-tk
4. > cd roop
5. > pip install -r requirements.txt

6. Installing cuda acceleration
     > pip uninstall onnxruntime onnxruntime-gpu
     > pip install onnxruntime-gpu==1.15.1
     > wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-keyring_1.0-1_all.deb
     > sudo dpkg -i cuda-keyring_1.0-1_all.deb
     > sudo apt-get update
     > sudo apt-get -y install cuda
     
7. Setting up folder structure
     > mkdir /home/ubuntu/source # this is where your source file and target file go
     > mkdir /home/ubuntu/outputs # this is where the renders go
