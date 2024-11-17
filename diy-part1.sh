#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#rm -rf ./package/lean/luci-theme-argon && git clone -b 18.06 https://github.com/fangenhui520/luci-theme-argon.git package/lean/luci-theme-argon
#sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default

rm -rf ./feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 23.x feeds/packages/lang/golang
rm -rf ./feeds/packages/net/{xray-core,v2ray-core,v2ray-geodata,sing-box}
rm -rf ./feeds/luci/applications/luci-app-passwall
rm -rf  ./feeds/packages/net/natmap
rm -rf ./feeds/luci/applications/luci-natmap
sed -i '$a src-git small8 https://github.com/kenzok8/small-package' feeds.conf.default
