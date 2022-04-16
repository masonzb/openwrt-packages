[![Sync](https://github.com/zbb1906/openwrt-packages/actions/workflows/autosync.yml/badge.svg)](https://github.com/zbb1906/openwrt-packages/actions/workflows/autosync.yml)

## 个人使用

```shell
sed -i '$a src-git app https://github.com/zbb1906/openwrt-packages' feeds.conf.default
git pull
./scripts/feeds update -a
./scripts/feeds install -a
make menuconfig
```
