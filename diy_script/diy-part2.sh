
sed -i '/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF./ d' package/lean/default-settings/files/zzz-default-settings

if [ ! -d "./package/lean/luci-app-argon-config" ]; then git clone https://github.com/jerrykuku/luci-app-argon-config.git ./package/lean/luci-app-argon-config;   else cd ./package/lean/luci-app-argon-config; git stash; git stash drop; git pull; cd ..; cd ..; cd ..; fi;
if [ ! -d "./package/lean/luci-app-adguardhome" ]; then git clone https://github.com/rufengsuixing/luci-app-adguardhome.git ./package/lean/luci-app-adguardhome;   else cd ./package/lean/luci-app-adguardhome; git stash; git stash drop; git pull; cd ..; cd ..; cd ..; fi;
#恢复主机型号
sed -i 's/(dmesg | grep .*/{a}${b}${c}${d}${e}${f}/g' package/lean/autocore/files/x86/autocore
sed -i '/h=${g}.*/d' package/lean/autocore/files/x86/autocore
sed -i 's/echo $h/echo $g/g' package/lean/autocore/files/x86/autocore

#关闭串口跑码
sed -i 's/console=tty0//g'  target/linux/x86/image/Makefile

#添加默认登录背景
rm -rf ./feeds/luci/themes/luci-theme-argon-mod/htdocs/luci-static/argon/background
mkdir -p ./feeds/luci/themes/luci-theme-argon-mod/htdocs/luci-static/argon/background
wget -P ./feeds/luci/themes/luci-theme-argon-mod/htdocs/luci-static/argon/background https://github.com/smallprogram/OpenWrtAction/raw/main/source/video/video.mp4

rm -rf ./feeds/luci/themes/luci-theme-argon/htdocs/luci-static/argon/background
mkdir -p ./feeds/luci/themes/luci-theme-argon/htdocs/luci-static/argon/background
wget -P ./feeds/luci/themes/luci-theme-argon/htdocs/luci-static/argon/background https://github.com/smallprogram/OpenWrtAction/raw/main/source/video/video.mp4
