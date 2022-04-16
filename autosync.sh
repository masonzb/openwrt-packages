#!/bin/bash

## 清理文件
rm -rf $(ls |grep -v autosync.sh |grep -v README.md | xargs)
rm -rf luci-app-adguardhome

# luci-theme-argon 主题
git clone https://github.com/jerrykuku/luci-theme-argon.git
git clone https://github.com/jerrykuku/luci-app-argon-config.git
git clone https://github.com/sirpdboy/luci-app-advanced.git
git clone https://github.com/thinktip/luci-theme-neobird.git

# smart dns
git clone https://github.com/pymumu/luci-app-smartdns.git
git clone https://github.com/pymumu/openwrt-smartdns.git

# adguardhome
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git

# immortalwrt
git clone https://github.com/immortalwrt/packages.git
mv -n packages/net/redsocks2 \
        packages/net/microsocks  ./

rm -rf packages


# 出国留学
git clone https://github.com/jerrykuku/luci-app-vssr.git
## pass openwrt-passwall 插件库
git clone --depth 1 -b packages https://github.com/xiaorouji/openwrt-passwall.git
mv -n openwrt-passwall/chinadns-ng \
        openwrt-passwall/dns2socks \
        openwrt-passwall/hysteria \
        openwrt-passwall/ipt2socks \
        openwrt-passwall/pdnsd-alt \
        openwrt-passwall/trojan-go \
        openwrt-passwall/trojan-plus \
        openwrt-passwall/ssocks ./
# hello world
git clone https://github.com/fw876/helloworld.git
mv -n helloworld/luci-app-ssr-plus \
        helloworld/trojan \
        helloworld/naiveproxy \
        helloworld/shadowsocks-rust \
        helloworld/shadowsocksr-libev \
        helloworld/simple-obfs \
        helloworld/tcping   \
        helloworld/v2ray-core \
        helloworld/v2ray-geodata \
        helloworld/v2ray-plugin \
        helloworld/v2raya \
        helloworld/xray-core \
        helloworld/xray-plugin ./

git clone https://github.com/jerrykuku/lua-maxminddb.git

# 清理无用文件
rm -rf helloworld & rm -rf openwrt-passwall
rm -rf ./*/.git & rm -rf ./*/.gitattributes
rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore
