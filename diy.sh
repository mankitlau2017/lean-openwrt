#!/bin/bash
sed -i 's/192.168.1.1/192.168.8.1/g' package/base-files/files/bin/config_generate
sed -i 's/Openwrt/G-DOCK/g' package/base-files/files/bin/config_generate
./scripts/feeds update -a
./scripts/feeds install -a
