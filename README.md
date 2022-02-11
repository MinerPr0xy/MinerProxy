# MinerProxy - 全新界面，支持ETH，ETC，抽水稳定不掉线，作者抽水千分之三。
最稳定的ETH以太坊代理中转矿池程序，MinerProxy/矿池代理，支持TCP和SSL协议，支持自定义抽水，高性能高并发，支持web界面管理，包含自启动和进程守护，重启后可以自动运行，会放开防火墙和连接数限制，一键搞定。

#### 重要提示必看
#### 1.Linux系统第一次安装完成后请重启服务器，这样可以突破连接限制，单机稳定2000台！！！
#### 2.安装完成后，请立即修改默认密码，以防别有用心之人，扫描端口偷偷登录！！！

<div align="center">
<img src="https://user-images.githubusercontent.com/96627099/152695920-dfe0fb0f-bc2b-48b7-993a-2014233e2a66.png" width="1000" height="800" />
</div>

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
bash <(curl -s -L https://git.io/Jy13U)
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

# Liunx-手动安装
```bash
git clone https://github.com/MinerPr0xy/MinerProxy.git
cd MinerProxy
chmod a+x MinerProxy_6.0.3_linux
nohup ./MinerProxy_6.0.3_linux & (后台运行，注意：& 也需要复制，运行完再敲几下回车)
tail -f nohup.out (后台运行时查看)
```

运行成功后访问 IP:19999 (如：127.0.0.1:19999 注意开放端口) 进行配置即可。
### 后台运行（注意后面的&）运行完再敲几下回车
```bash
nohup ./MinerProxy_6.0.3_linux &
```
### 后台运行时关闭
```bash
killall MinerProxy_6.0.3_linux
```
### 后台运行时查看
```bash
tail -f nohup.out
```
### 更新软件
```bash
git pull 
```
## 提示bash: git: command not found的先安装git
### ubuntu下
```bash
apt update
apt install git
```
### centos下
```bash
yum update
yum install git
```
# Windows-使用方法
```bash
./MinerProxy_6.0.3_windows.exe
```
或双击打开 启动.bat 运行成功后访问 IP:19999 (如：127.0.0.1:19999 注意开放端口) 进行配置即可。
