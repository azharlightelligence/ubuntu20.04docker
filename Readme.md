Following steps to build and run

```
docker build -t ah-dv .
docker run --user $UID:$GID -it --gpus=all --ipc=host --shm-size=200g --net=host --name ahsim --volume `pwd`:/workspace -e STORAGE=“200GB”  ah-dv bash
```
