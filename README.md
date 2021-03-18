xr872-builder
==========

![][docker-build] ![][docker-pulls] ![][docker-image-size]

Build environment with `gcc-arm-none-eabi-4.9-2015-q2` preinstalled for XR872AT.

```sh
docker pull xingrz/xr872-builder:latest
```

## Usage

```sh
docker run --rm \
    -v /path/to/your/project:/project \
    xingrz/xr872-builder:latest \
    make
```

[docker-build]: https://shields.io/docker/cloud/build/xingrz/xr872-builder?style=flat-square
[docker-pulls]: https://shields.io/docker/pulls/xingrz/xr872-builder?style=flat-square
[docker-image-size]: https://shields.io/docker/image-size/xingrz/xr872-builder?style=flat-square
