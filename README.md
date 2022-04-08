<h1 align="center">
  <br>
  <img src="https://user-images.githubusercontent.com/96627099/154535919-cc06cf09-ddeb-4e0c-b571-2d77f15d5be1.png" width="350"/>
</h1>

<h1 align="center">全新界面，支持ETH，ETC，抽水稳定不掉线，作者抽水千分之三。</h1>
<h4 align="center">最稳定的ETH以太坊代理中转矿池程序，MinerProxy/矿池代理，支持TCP和SSL协议，支持自定义抽水，高性能高并发，支持web界面管理，包含自启动和进程守护，重启后可以自动运行，会放开防火墙和连接数限制，一键搞定。</h4>
<h4 align="center">
帮助稳定（编写中）：https://minerproxy.gitbook.io/minerproxy/</h4>

<p align="center">
  <a>
    <img src="https://img.shields.io/badge/Release-6.0.4_ETHASH-orgin.svg" alt="travis">
  </a>
  <a>
    <img src="https://img.shields.io/badge/Last_Update-2022_04_06-orgin.svg" alt="travis">
  </a>
  <a>
    <img src="https://img.shields.io/badge/Language-GoLang-green.svg" alt="travis">
  </a>
  <a>
    <img src="https://img.shields.io/badge/License-Apache-green.svg" alt="travis">
  </a>
</p>

![MinerProxy](https://user-images.githubusercontent.com/96627099/154536945-8c96317c-8676-41d9-88be-1206bcd24c0b.png)

# 重要提示必看
#### 1.Linux系统第一次安装完成后请重启服务器，这样可以突破连接限制，单机稳定2000台！！！
#### 2.安装完成后，请立即修改默认密码，以防别有用心之人，扫描端口偷偷登录！！！

# MinerProxy - 使用后算力截图，算力几乎无损耗。

<div align="center">
<img src="https://user-images.githubusercontent.com/96627099/148779614-6ce9006a-6bf3-4c15-87d5-1b3e12ed10b9.png" width="883" height="400" />
</div>

# 矿工交流 TG电报群：https://t.me/Miner_Proxy
#### 联系我们：[Telegram 讨论群组(欢迎向我们提出建议)](https://t.me/Miner_Proxy)、[GitHub](https://github.com/MinerPr0xy/MinerProxy)
#### 联系我们：QQ群：683918874、微信：edavhdl（备注：加群）

<div align="center">
<img src="https://user-images.githubusercontent.com/96627099/147364637-3db2caea-f536-4a9c-ad7d-d062559d46fe.png" width="500" height="500" />
</div>

# Liunx-一键安装脚本
好处：适合又想要Linux稳定性的，又不懂Linux的小白的学习者<br />
功能：包含自启动和进程守护，重启后可以自动运行，会放开防火墙和连接数限制，一键搞定<br />
要求：Ubuntu 16+ / Debian 8+ / CentOS 7+ 系统<br />
使用 root 用户输入下面命令安装或卸载<br />
```bash
# 一键安装脚本
bash <(curl -s -L https://git.io/Jy13U)
# 一键安装脚本 - 备用
bash <(curl -s -L https://cdn.jsdelivr.net/gh/MinerPr0xy/minerProxy@master/install.sh)
```
### 输入命令回车之后一直卡住不动，换这种办法
ubuntu/debian 系统安装
```bash
wget: apt-get update -y && apt-get install wget -y
```
centos 系统安装
```bash
yum update -y && yum install wget -y
```
安装好 wget 之后 下载脚本并执行
```bash
wget https://raw.githubusercontent.com/MinerPr0xy/MinerProxy/main/install.sh
bash install.sh
```

### 提示 curl: command not found的先安装curl
ubuntu/debian 系统安装 curl 方法: 
```bash
apt-get update -y && apt-get install curl -y
```
centos 系统安装 curl 方法: 
```bash
yum update -y && yum install curl -y
```
安装好 curl 之后就能安装脚本了
