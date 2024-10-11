#!/bin/bash
#===============================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.1.251/g' openwrt/package/base-files/files/bin/config_generate

# 添加额外插件
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



# git clone --depth=1 https://github.com/fw876/helloworld openwrt/package/feeds/luci/luci-app-ssr-plus


# git clone --depth=1 -b js https://github.com/kenzok78/luci-theme-design openwrt/package/feeds/luci/luci-theme-design

