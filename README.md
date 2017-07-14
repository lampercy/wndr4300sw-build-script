# wndr4300sw-build-script

### reference
- https://homulilly.com/post/compile-wndr4300-openwrt-1505-firmware.html
- https://forum.openwrt.org/viewtopic.php?id=39142

### requirements
- Docker
- Docker compose

### Steps
```sh
docker-compose run --rm ubuntu bash -c 'wget $IMAGE_BUILDER_PATH -O imagebuilder.tar && \
  mkdir imagebuilder && \
  tar -xf imagebuilder.tar -C imagebuilder && \
  rm imagebuilder.tar'
```
docker-compose run --rm ubuntu bash -c 'mkdir -C imagebuilder && tar -xf imagebuilder.tar -C imagebuilder && rm image_builder.tar'

