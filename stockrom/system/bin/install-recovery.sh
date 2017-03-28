#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 16322560 b82aec6af434f724018e7638c764beed0bb9eae2 14006272 a40d724aa5ddba1acf3e8df670dd1daa85a1a9db
fi

if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:16322560:b82aec6af434f724018e7638c764beed0bb9eae2; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:14006272:a40d724aa5ddba1acf3e8df670dd1daa85a1a9db EMMC:/dev/block/bootdevice/by-name/recovery b82aec6af434f724018e7638c764beed0bb9eae2 16322560 a40d724aa5ddba1acf3e8df670dd1daa85a1a9db:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
