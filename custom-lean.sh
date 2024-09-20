#!/bin/bash
#===============================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.1.251/g' openwrt/package/base-files/files/bin/config_generate

# 移除要替换的包
# rm -rf openwrt/package/feeds/luci/luci-theme-argon
# rm -rf openwrt/package/feeds/luci/luci-app-argon-config
# rm -rf openwrt/package/feeds/luci/luci-theme-design


# 添加额外插件
# git clone --depth=1 https://github.com/esirplayground/luci-app-poweroff openwrt/package/feeds/luci/luci-app-poweroff

# git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall-packages openwrt/package/openwrt-passwall
# git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall openwrt/package/luci-app-passwall
# git clone --depth=1 https://github.com/fw876/helloworld openwrt/package/feeds/luci/luci-app-ssr-plus

# git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon openwrt/package/feeds/luci/luci-theme-argon
# git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-app-argon-config openwrt/package/feeds/luci/luci-app-argon-config
# git clone --depth=1 https://github.com/kenzok78/luci-theme-design openwrt/package/feeds/luci/luci-theme-design
