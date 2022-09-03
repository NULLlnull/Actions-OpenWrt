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
sed -i 's/192.168.1.1/172.168.10.1/g' package/base-files/files/bin/config_generate
sed -i 's/255.255.255.0/255.255.128.0/g' package/base-files/files/bin/config_generate

#更换argon主题
rm -rf openwrt/package/lean/luci-theme-argon
git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon  #argon-主题