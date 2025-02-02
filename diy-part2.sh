#!/bin/bash

#

# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>

#

# This is free software, licensed under the MIT License.

# See /LICENSE for more information.

#

# https://github.com/P3TERX/Actions-OpenWrt

# File name: diy-part2.sh

# Description: OpenWrt DIY script part 2 (After Update feeds)

#

# Modify default IP
# 设置密码为空 sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings
# 设置luci显示型号 sed -i 's/GeHua GHL-R-001/GeHuaLian GHL-R-01/g' target/linux/ramips/dts/mt7621_gehua_ghl-r-001.dts
#sed -i "s/OpenWrt /Fang build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings # 版本号里显示自己时间
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
#sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate
#sed -i 's/KERNEL_PATCHVER:=5.10/KERNEL_PATCHVER:=5.4/g' target/linux/ramips/Makefile
#sed -i 's/KERNEL_TESTING_PATCHVER:=5.4/KERNEL_TESTING_PATCHVER:=5.10/g' target/linux/ramips/Makefile

rm -rf ./feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 23.x feeds/packages/lang/golang
rm -rf ./feeds/packages/net/{xray-core,v2ray-core,v2ray-geodata,sing-box}
rm -rf ./feeds/luci/applications/luci-app-passwall
#rm -rf  ./feeds/packages/net/natmap
#rm -rf ./feeds/luci/applications/luci-app-natmap

cp -rf ./feeds/small8/xray-core ./feeds/packages/net/xray-core
cp -rf ./feeds/small8/luci-app-passwall ./feeds/luci/applications/luci-app-passwall
#cp -rf ./feeds/small8/luci-app-natmap ./feeds/luci/applications/luci-app-natmap
#cp -rf ./feeds/small8/luci-app-natmap/natmap ./feeds/packages/net/natmap
