android_device_samsung_degaswifi
================================

This is a basic configuration for building recovery rom for Galaxy Tab 4 7.0 (degaswifi). 
NOtable things about it:

* You can find out [here](http://forum.xda-developers.com/showthread.php?t=2785612) how the boot image header is different from the standard Android header which is why standard tools fail to unpack its boot images. Therefore you'd have to use this [custom mkbootimg](https://github.com/kumajaya/degas-mkbootimg) by [Ketut P. Kumajaya](http://forum.xda-developers.com/member.php?u=4021423) to create the recovery image.
In BoardConfig.mk it's set by `BOARD_CUSTOM_MKBOOTIMG := degas-mkbootimg`
Change that to point to the correct path
* The device uses v2 recovery.fsab. I've converted to v1 so it's compatible with twrp
* I had to supply the device tree table which I have extracted to stock rom, BoardConfig.mk has that defined as `BOARD_MKBOOTIMG_ARGS := --dt device/samsung/degaswifi/recovery.img-dt`

Feel free to fork and submit any changes
