#!/bin/bash
base_path=$HOME/src
install_path=$base_path/TPscan #程序安装目录

function download {
    git clone https://github.com.cnpmjs.org/Lucifer1993/TPscan.git $1
    pip3 install gevent
}

#1.检查程序目录是否存在
if [ ! -d $install_path ]; then
    #如果不存在就下载
    echo "[*] download..."
    download $install_path
    echo "[*] download success!"
fi
cd $install_path && git reset --hard && git pull origin master && python3 $install_path/TPscan.py $* 

