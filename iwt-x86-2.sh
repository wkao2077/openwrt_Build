#!/bin/bash
#===============================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.77.3/g' openwrt/package/base-files/files/bin/config_generate

# 添加额外插件
git clone --depth=1 -b js https://github.com/sirpdboy/luci-app-poweroffdevice openwrt/package/feeds/luci/luci-app-poweroffdevice


# 科学上网
# git clone --depth=1 -b main https://github.com/xiaorouji/openwrt-passwall2 openwrt/package/feeds/luci/luci-app-passwall2
git clone --depth=1 -b main https://github.com/nikkinikki-org/OpenWrt-nikki openwrt/package/luci-app-nikki

# 主题
# git clone --depth=1 -b js https://github.com/kenzok78/luci-theme-design openwrt/package/feeds/luci/luci-theme-design

