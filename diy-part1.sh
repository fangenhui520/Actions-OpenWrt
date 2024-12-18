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


sed -i '$a src-git small8 https://github.com/kenzok8/small-package' feeds.conf.default
rm -rf feeds/smpackage/{base-files,dnsmasq,firewall*,fullconenat,libnftnl,nftables,ppp,opkg,ucl,upx,vsftpd*,miniupnpd-iptables,wireless-regdb}
