#!/bin/bash
#===============================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.1.251/g' openwrt/package/base-files/files/bin/config_generate

# 移除要替换的包
rm -rf openwrt/package/feeds/luci/luci-theme-argon
rm -rf openwrt/package/feeds/luci/luci-app-argon-config


# 添加额外插件
git clone --depth=1 https://github.com/esirplayground/luci-app-poweroff openwrt/package/feeds/luci/luci-app-poweroff

git clone --depth=1 -b master https://github.com/linkease/nas-packages openwrt/package/nas
git clone --depth=1 -b main https://github.com/linkease/nas-packages-luci openwrt/package/nas_luci
rm -rf openwrt/package/nas_luci/luci/luci-app-istorex
rm -rf openwrt/package/nas_luci/luci/luci-app-quickstart
rm -rf openwrt/package/nas_luci/luci/luci-app-unishare
rm -rf openwrt/package/nas_luci/luci/luci-app-istoreenhance
rm -rf openwrt/package/nas_luci/luci/luci-app-linkease
rm -rf openwrt/package/nas_luci/luci/luci-nginxer
rm -rf openwrt/package/nas_luci/luci/luci-lib-iform
rm -rf openwrt/package/nas/network/services/quickstart
rm -rf openwrt/package/nas/network/services/unishare
rm -rf openwrt/package/nas/network/services/webdav2

# git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall-packages openwrt/package/openwrt-passwall
# git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall openwrt/package/luci-app-passwall
git clone --depth=1 -b master https://github.com/fw876/helloworld openwrt/package/feeds/luci/luci-app-ssr-plus


# 主题
git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon openwrt/package/feeds/luci/luci-theme-argon
git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-app-argon-config openwrt/package/feeds/luci/luci-app-argon-config
git clone --depth=1 -b main https://github.com/sirpdboy/luci-theme-kucat openwrt/package/feeds/luci/luci-theme-kucat
