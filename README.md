# wndr4300sw-build-script

### Reference
- https://homulilly.com/post/compile-wndr4300-openwrt-1505-firmware.html
- https://forum.openwrt.org/viewtopic.php?id=39142

### Requirements
- Docker
- Docker compose

### Steps
```sh
docker-compose run --rm ubuntu bash -c 'wget $IMAGE_BUILDER_PATH -O imagebuilder.tar && \
  mkdir imagebuilder && \
  tar -xf imagebuilder.tar -C imagebuilder  --strip 1 && \
  rm imagebuilder.tar'
```

- Edit 
```sh
vi ./imagebuilder/target/linux/ar71xx/image/legacy.mk
```

1. Find the row `wndr4300_mtdlayout`
2. Replace `23552k(ubi)` with `120832k(ubi)`
3. Replace `25600k@0x6c0000(firmware)` with `122880k@0x6c0000(firmware)`

- Compile
```sh
make image PROFILE=WNDR4300V1 PACKAGES="libiwinfo-lua liblua libubus-lua libuci-lua lua luci luci-app-firewall luci-base luci-lib-ip luci-lib-nixio luci-mod-admin-full luci-proto-ipv6 luci-proto-ppp luci-theme-bootstrap rpcd uhttpd uhttpd-mod-ubus wget luci-app-ddns luci-app-sqm ca-certificates"
```
