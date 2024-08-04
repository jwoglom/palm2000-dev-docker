# Setup

```bash
docker build -t palm2000-dev .
docker run -v ./src:/palmdev_V3/src -v ./out:/palmdev_V3/out -it palm2000-dev
```

To run POSE (emulator):

```bash
xhost +local:docker
docker run -v ./src:/palmdev_V3/src -v ./out:/palmdev_V3/out -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=host.docker.internal:0 -it palm2000-dev /palmdev_V3/addons/POSE_3_5_2/pose -rom /rom/Palm-m515-4.1-en.rom -run_app /palmdev_V3/out/test.prc
```