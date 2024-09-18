#!/bin/bash
#===============================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.1.251/g' openwrt/package/base-files/files/bin/config_generate


# 添加额外插件
git clone --depth=1 https://github.com/esirplayground/luci-app-poweroff openwrt/package/feeds/luci/luci-app-poweroff

git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall-packages openwrt/package/openwrt-passwall
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall openwrt/package/luci-app-passwall


git clone --depth=1 -b 18.06 https://github.com/kiddin9/luci-theme-edge openwrt/package/feeds/luci/luci-theme-edge
