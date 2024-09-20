#!/bin/bash
#===============================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.1.251/g' openwrt/package/base-files/files/bin/config_generate

# 添加额外插件
git clone --depth=1 https://github.com/esirplayground/luci-app-poweroff openwrt/package/feeds/luci/luci-app-poweroff

# git clone --depth=1 https://github.com/fw876/helloworld openwrt/package/feeds/luci/luci-app-ssr-plus


git clone --depth=1 -b js https://github.com/kenzok78/luci-theme-design openwrt/package/feeds/luci/luci-theme-design
# git clone --depth=1 -b js https://github.com/sirpdboy/luci-theme-kucat openwrt/package/feeds/luci/luci-theme-kucat

