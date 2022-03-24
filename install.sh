#!/bin/bash
stty erase ^H

red='\e[91m'
green='\e[92m'
yellow='\e[94m'
magenta='\e[95m'
cyan='\e[96m'
none='\e[0m'

_red() { echo -e ${red}$*${none}; }
_green() { echo -e ${green}$*${none}; }
_yellow() { echo -e ${yellow}$*${none}; }
_magenta() { echo -e ${magenta}$*${none}; }
_cyan() { echo -e ${cyan}$*${none}; }

# Root
[[ $(id -u) != 0 ]] && echo -e "\n 请使用 ${red}root ${none}用户运行 ${yellow}~(^_^) ${none}\n" && exit 1

cmd="apt-get"

sys_bit=$(uname -m)

case $sys_bit in
'amd64' | x86_64) ;;
*)
    echo -e " 
	 这个 ${red}安装脚本${none} 不支持你的系统。 ${yellow}(-_-) ${none}

	备注: 仅支持 Ubuntu 16+ / Debian 8+ / CentOS 7+ 系统
	" && exit 1
    ;;
esac

if [[ $(command -v apt-get) || $(command -v yum) ]] && [[ $(command -v systemctl) ]]; then

    if [[ $(command -v yum) ]]; then

        cmd="yum"

    fi

else

    echo -e " 
	 这个 ${red}安装脚本${none} 不支持你的系统。 ${yellow}(-_-) ${none}

	备注: 仅支持 Ubuntu 16+ / Debian 8+ / CentOS 7+ 系统
	" && exit 1

fi

if [ ! -d "/etc/MinerProxy/" ]; then
    mkdir /etc/MinerProxy/
fi

error() {
    echo -e "\n$red 输入错误!$none\n"
}

install_download() {
    installPath="/etc/MinerProxy"
    $cmd update -y
    if [[ $cmd == "apt-get" ]]; then
        $cmd install -y lrzsz git zip unzip curl wget supervisor
        service supervisor restart
    else
        $cmd install -y epel-release
        $cmd update -y
        $cmd install -y lrzsz git zip unzip curl wget supervisor
        systemctl enable supervisord
        service supervisord restart
    fi
    [ -d ./MinerProxy ] && rm -rf ./MinerProxy
    git clone https://github.com/MinerPr0xy/MinerProxy.git

    if [[ ! -d ./MinerProxy ]]; then
        echo
        echo -e "$red 克隆脚本仓库出错了...$none"
        echo
        echo -e " 请尝试自行安装 Git: ${green}$cmd install -y git $none 之后再安装此脚本"
        echo
        exit 1
    fi
    cp -rf ./MinerProxy /etc/
    if [[ ! -d $installPath ]]; then
        echo
        echo -e "$red 复制文件出错了...$none"
        echo
        echo -e " 使用最新版本的Ubuntu或者CentOS再试试"
        echo
        exit 1
    fi
}

start_write_config() {
    echo
    echo "下载完成，开启守护"
    echo
    chmod a+x $installPath/MinerProxy_6.0.5_linux
    if [ -d "/etc/supervisor/conf/" ]; then
        rm /etc/supervisor/conf/MinerProxy.conf -f
        echo "[program:MinerProxy]" >>/etc/supervisor/conf/MinerProxy.conf
        echo "command=${installPath}/MinerProxy_6.0.5_linux" >>/etc/supervisor/conf/MinerProxy.conf
        echo "directory=${installPath}/" >>/etc/supervisor/conf/MinerProxy.conf
        echo "autostart=true" >>/etc/supervisor/conf/MinerProxy.conf
        echo "autorestart=true" >>/etc/supervisor/conf/MinerProxy.conf
    elif [ -d "/etc/supervisor/conf.d/" ]; then
        rm /etc/supervisor/conf.d/MinerProxy.conf -f
        echo "[program:MinerProxy]" >>/etc/supervisor/conf.d/MinerProxy.conf
        echo "command=${installPath}/MinerProxy_6.0.5_linux" >>/etc/supervisor/conf.d/MinerProxy.conf
        echo "directory=${installPath}/" >>/etc/supervisor/conf.d/MinerProxy.conf
        echo "autostart=true" >>/etc/supervisor/conf.d/MinerProxy.conf
        echo "autorestart=true" >>/etc/supervisor/conf.d/MinerProxy.conf
    elif [ -d "/etc/supervisord.d/" ]; then
        rm /etc/supervisord.d/MinerProxy.ini -f
        echo "[program:MinerProxy]" >>/etc/supervisord.d/MinerProxy.ini
        echo "command=${installPath}/MinerProxy_6.0.5_linux" >>/etc/supervisord.d/MinerProxy.ini
        echo "directory=${installPath}/" >>/etc/supervisord.d/MinerProxy.ini
        echo "autostart=true" >>/etc/supervisord.d/MinerProxy.ini
        echo "autorestart=true" >>/etc/supervisord.d/MinerProxy.ini
    else
        echo
        echo "----------------------------------------------------------------"
        echo
        echo " Supervisor安装目录没了，安装失败"
        echo
        exit 1
    fi

    if [[ $cmd == "apt-get" ]]; then
        ufw disable
    else
        systemctl stop firewalld
	    sleep 1
	    systemctl disable firewalld.service
    fi

    changeLimit="n"
    if [ $(grep -c "root soft nofile" /etc/security/limits.conf) -eq '0' ]; then
        echo "root soft nofile 102400" >>/etc/security/limits.conf
        changeLimit="y"
    fi
    if [ $(grep -c "root hard nofile" /etc/security/limits.conf) -eq '0' ]; then
        echo "root hard nofile 102400" >>/etc/security/limits.conf
        changeLimit="y"
    fi
    
	if [ $(grep -c "root soft nofile" /etc/systemd/system.conf) -eq '0' ]; then
        echo "DefaultLimitNOFILE=102400" >>/etc/systemd/system.conf
        changeLimit="y"
    fi
    if [ $(grep -c "root hard nofile" /etc/systemd/system.conf) -eq '0' ]; then
        echo "DefaultLimitNPROC=102400" >>/etc/systemd/system.conf
        changeLimit="y"
    fi
	
	if [ $(grep -c "root soft nofile" /etc/systemd/user.conf) -eq '0' ]; then
        echo "DefaultLimitNOFILE=102400" >>/etc/systemd/user.conf
        changeLimit="y"
    fi
    if [ $(grep -c "root hard nofile" /etc/systemd/user.conf) -eq '0' ]; then
        echo "DefaultLimitNPROC=102400" >>/etc/systemd/user.conf
        changeLimit="y"
    fi

    clear
    echo
    echo "----------------------------------------------------------------"
    echo
    if [[ "$changeLimit" = "y" ]]; then
        echo "系统连接数限制已经改了，如果第一次运行本程序需要重启!"
        echo
    fi
    sleep 1
    supervisorctl reload
    sleep 1
    echo "本机防火墙端口随机已经开放，如果还无法连接，请到云服务商控制台操作安全组，放行对应的端口"
    echo "默认端口:随机 默认密码:随机 访问管理界面:本机IP:随机端口"
    echo
    echo "安装完成...守护模式无日志，需要日志的请登录后台查看"
    echo
    echo "[*---------]"
    sleep 1
    echo "[**--------]"
    sleep 1
    echo "[***-------]"
    sleep 1
    echo "[****------]"
    echo
    cat /etc/MinerProxy/pass.txt
    echo
    echo "----------------------------------------------------------------"
}

uninstall() {
    clear
    if [ -d "/etc/supervisor/conf/" ]; then
        rm /etc/supervisor/conf/MinerProxy.conf -f
    elif [ -d "/etc/supervisor/conf.d/" ]; then
        rm /etc/supervisor/conf.d/MinerProxy.conf -f
    elif [ -d "/etc/supervisord.d/" ]; then
        rm /etc/supervisord.d/MinerProxy.ini -f
    fi
    supervisorctl reload
    echo -e "$yellow 已关闭自启动${none}"
}

Reset() {
    clear 
    if [ -f "/etc/MinerProxy/config.json" ]; then
        rm -f /etc/MinerProxy/config.json
    fi
    killall MinerProxy_6.0.0_linux
    killall MinerProxy_6.0.1_linux
    killall MinerProxy_6.0.2_linux
    killall MinerProxy_6.0.3_linux
    killall MinerProxy_6.0.4_linux
    killall MinerProxy_6.0.5_linux
    echo "----------------------------------------------------------------"
    echo
    echo "[*---------]"
    sleep 1
    echo "[**--------]"
    sleep 1
    echo "[***-------]"
    sleep 1
    echo "[****------]"
    echo
    cat /etc/MinerProxy/pass.txt
    echo
    echo "----------------------------------------------------------------"
}

clear
while :; do
    echo
    echo "-------- MinerProxy 一键安装脚本 by:MinerPr1xy--------"
    echo "Github下载地址:https://github.com/MinerPr0xy/MinerProxy"
    echo "帮助稳定(编写中):https://minerproxy.gitbook.io/minerproxy/"
    echo "官方电报群:https://t.me/Miner_Proxy"
    echo "官方QQ群号:683918874"
    echo
    echo " 1. 安装(MinerProxy)"
    echo
    echo " 2. 卸载(MinerProxy)"
    echo
    echo " 3. 重启(MinerProxy)"
    echo
    echo " 4. 重置配置文件(后台端口和后台密码)"
    echo
    read -p "$(echo -e "请选择 [${magenta}1-2$none]:")" choose
    case $choose in
    1)
        install_download
        start_write_config
        break
        ;;
    2)
        uninstall
        break
        ;;
    3)
        killall MinerProxy_6.0.0_linux
        killall MinerProxy_6.0.1_linux
        killall MinerProxy_6.0.2_linux
        killall MinerProxy_6.0.3_linux
        killall MinerProxy_6.0.4_linux
        killall MinerProxy_6.0.5_linux
        echo "重启成功"
        break
        ;;
    4)
        Reset
        break
        ;;
    *)
        error
        ;;
    esac
done
