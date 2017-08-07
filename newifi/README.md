### Reference
- https://tieba.baidu.com/p/5011787283
- http://bbs.newifi.com/thread-2404-1-1.html

### To flash breed
降级至3500版官方固件，开启ssh

http://www.newbandeng.com/forum.php?mod=viewthread&tid=22200

- making backup
```
cd /tmp
dd if=/dev/mtd0 of=uboot.bin
dd if=/dev/mtd2 of=factory.bin
dd if=/dev/mtd3 of=fullflash.bin
(copy by scp)
```

- build the bin
```
wget http://downloads.pandorabox.com.cn/pandorabox/Newifi-D1/pb-boot/pb-boot-newifi-d1-20160919.bin
dd if=/dev/zero bs=1024 count=192 | tr "\000" "\377" >pb_192.bin
dd if=pb-boot-newifi-d1-20160919.bin of=pb_192.bin conv=notrunc
cat /tmp/pb_192.bin /dev/mtd1 /dev/mtd2 /dev/mtd4 >fullflash_with_pb.bin
```

- write
```
mtd write fullflash_with_pb.bin fullflash
```
会有e/w交替闪烁。千万不能断电。完成后手动重启进pb-boot。
