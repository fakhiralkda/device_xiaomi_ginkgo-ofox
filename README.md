# android_device_xiaomi_ginkgo
For building OrangeFox for Xiaomi Redmi Note 8

Forked TWRP device tree for Xiaomi Redmi Note 8 from mauronofrio

## Features

Works:

- ADB
- Decryption of /data
- Screen brightness settings
- Correct screenshot color
- MTP
- Flashing (opengapps, roms, images and so on)
- Backup/Restore (Needs more testing)
- USB OTG
- Vibration support

TO-DO:

- Screen off

## Sync and Build manually ##
---------------

To get started with building OrangeFox Recovery, you'll need to get
familiar with [Git and Repo](https://source.android.com/source/using-repo.html).

To initialize your local repository using the minimal-manifest-twrp omni trees to build OrangeFox, use a command like this:

    repo init -u https://gitlab.com/OrangeFox/Manifest.git -b fox_9.0
    
To initialize a shallow clone (recommended), which will save even more space, use a command like this:

    repo init --depth=1 -u https://gitlab.com/OrangeFox/Manifest.git -b fox_9.0

Then to sync up:

    repo sync -j$(nproc --all) --force-sync

Then add these projects to .repo/manifests/fox.xml:

```xml
<project path="device/xiaomi/ginkgo" name="Devices/ginkgo" remote="fox" revision="fox_9.0" />
```

Then to build:

     cd <source-dir>
     . build/envsetup.sh && export ALLOW_MISSING_DEPENDENCIES=true 
     lunch omni_ginkgo-eng && mka recoveryimage


To test it:

    fastboot boot out/target/product/ginkgo/recovery.img


## Other Sources

Using precompiled stock kernel.

## Thanks

- Thanks to @PeterCxy for the commits and the base: https://github.com/PeterCxy/android_device_xiaomi_violet-twrp
- Thanks to @mauronofrio for TWRP device tree: https://github.com/mauronofrio/android_device_xiaomi_ginkgo
