Following steps to build and run

```
docker build -t ah-dv .
docker run --user $UID:$GID -it --gpus=all --ipc=host --shm-size=200g --net=host --name ahsim --volume `pwd`:/workspace -e STORAGE=“200GB”  ah-dv bash
```
once exit

we can do 

```
docker start ahsim
docker exec -it -u root ahsim bash
```
and additional dependencies to run inside docker container ahsim

```
apt-get update
apt-get install -y \
  build-essential \
  cmake \
  g++ \
  python3 \
  python3-dev \
  python3-pip \
  libxml2-dev \
  libgsl-dev \
  libsqlite3-dev \
  libgtk-3-dev \
  libpcap-dev \
  libboost-all-dev \
  libfftw3-dev \
  qt5-qmake \
  qtbase5-dev \
  qtchooser \
  qtbase5-dev-tools \
  libcanberra-gtk3-module \
  libsnappy-dev \
  libboost-iostreams-dev \
  libboost-regex-dev \
  libboost-filesystem-dev \
  libboost-system-dev \
  libboost-thread-dev \
  libssl-dev

```
