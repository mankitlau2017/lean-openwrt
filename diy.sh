#!/bin/bash
sed -i 's/192.168.1.1/192.168.112.1/g' package/base-files/files/bin/config_generate
sed -i 's/Openwrt/mAnkltIau/g' package/base-files/files/bin/config_generate
sed -i 's/Openwrt/mAnkItlau/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
git clone https://github.com/jerrykuku/lua-maxminddb package/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr package/luci-app-vssr
git clone https://github.com/Lienol/openwrt-package package/openwrt-package
./scripts/feeds update -a
./scripts/feeds install -a
