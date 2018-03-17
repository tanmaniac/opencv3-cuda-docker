# opencv3-cuda-docker
Docker container with CUDA 9.0, OpenGL, and OpenCV 3.

## Building
- Install Docker-CE as described for your distribution on the [Docker docs](https://docs.docker.com/install/).
    - Follow the [Optional Linux post-installation](https://docs.docker.com/install/linux/linux-postinstall/) steps to run Docker without `sudo`.

Build with:
```bash
./build.sh
```
That's it!

The build will take about 40 minutes on a reasonably fast PC (quad core or faster i7 or Ryzen).

You can also pull the docker image from Docker Hub:

```bash
docker pull tanmaniac/opencv3-cudagl
```

## Running

- Install nvidia-docker2 as described in the [`nvidia-docker` docs](https://github.com/nvidia/nvidia-docker/wiki/Installation-(version-2.0)). The container provided in this repo needs the `nvidia` Docker runtime to run.

Run with:
```bash
./run.sh
```
and you'll be dropped into an interactive session.
