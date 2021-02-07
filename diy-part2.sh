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
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/33.33.33.252/g' package/base-files/files/bin/config_generate
sed -i '/network.$1.netmask/a set network.$1.gateway='%33.33.33.253%'' package/base-files/files/bin/config_generate
sed -i "s/%/'/g" package/base-files/files/bin/config_generate
