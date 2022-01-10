# MinerProxy - 以修改作者抽水至千分之三。
最稳定的ETH以太坊代理中转矿池程序，MinerProxy/矿池代理，支持TCP和SSL协议，支持自定义抽水，高性能高并发，支持web界面管理，包含自启动和进程守护，重启后可以自动运行，会放开防火墙和连接数限制，一键搞定。

# MinerProxy - 使用后算力截图，算力几乎无损耗。

<div align="center">
<img src="https://user-images.githubusercontent.com/96627099/148779614-6ce9006a-6bf3-4c15-87d5-1b3e12ed10b9.png" width="883" height="400" />
</div>

# 矿工交流 TG电报群：https://t.me/Miner_Proxy

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
chmod a+x minerProxy_3.0.3_linux
nohup ./minerProxy_3.0.3_linux & (后台运行，注意：& 也需要复制，运行完再敲几下回车)
tail -f nohup.out (后台运行时查看)
```

运行成功后访问 IP:18888 (如：127.0.0.1:18888 注意开放端口) 进行配置即可。
### 后台运行（注意后面的&）运行完再敲几下回车
```bash
nohup ./minerProxy_3.0.3_linux &
```
### 后台运行时关闭
```bash
killall minerProxy_3.0.3_linux
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
./minerProxy_3.0.3_windows.exe
```
或双击打开minerProxy_3.0.3_windows.exe 运行成功后访问 IP:18888 (如：127.0.0.1:18888 注意开放端口) 进行配置即可。

# 配置文件 config.yml
```
host: 0.0.0.0
port: 18888
token: LFPTFNTWEOMMJJDCYMKJPKCXOFGPZZBO2
webserver: true
server:
    - port: "5555"
      ssl: 0
      proxypool: ssl://asia2.ethermine.org:5555
      devfee: 0.5
      devpool: ssl://asia2.ethermine.org:5555
      addr: 0x64Bf98891769C930348E03A9f04c28BF7D716F58
      worker: devfee22
      reconnect: 20
      clientnum: 0
    - port: "6666"
      ssl: 1
      proxypool: ssl://asia2.ethermine.org:5555
      devfee: 0.5
      devpool: ssl://asia2.ethermine.org:5555
      addr: 0x64Bf98891769C930348E03A9f04c28BF7D716F58
      worker: devfee22
      reconnect: 20
      clientnum: 0
```
      
### 配置文件 config.yml 说明
```
host: 0.0.0.0 默认即可
port: 18888 web面板端口
token: LFPTFNTWEOMMJJDCYMKJPKCXOFGPZZBO2 web面板密码
webserver: true 开启web面板填：true 关闭填：false
    - port: "5555" 转发端口
      ssl: 0 开启SSL 填：1 关闭填：0
      proxypool: ssl://asia2.ethermine.org:5555 转发矿池地址
      devfee: 0.5 抽水比例
      devpool: ssl://asia2.ethermine.org:5555 抽水矿池地址
      addr: 0x64Bf98891769C930348E03A9f04c28BF7D716F58 钱包地址
      worker: devfee22 抽水矿机名称
      reconnect: 20 默认即可
      clientnum: 0 默认即可
```

# 更新日志
```bigquery
2021-12-27 19:00    3.0.3>>>修复了内存溢出的问题,强烈建议3.0.X和2.6.X系列用户升级
2021-12-26 00:00    3.0.2>>>修复有的矿机掉线后无法连接或不断开连接的问题
2021-12-25 09:02    3.0.0>>>修复了有的矿机掉线后无法连接或不断开连接的问题，修复了部分人蚂蚁矿池无法连接的问题，建议3.0.0版本升级到此版本
2021-12-25 09:02    3.0.0>>>代码重构,经过了单机1600台压力测试
2021-12-24 00:00    2.6.6T2>>>修复若干bug
2021-12-23 10:17    2.6.5>>>增加了web版本,优化部分代码
2021-12-23 07:07    2.6.4>>>代码优化,提升稳定性
2021-12-22 02:06    2.6.3>>>修复了poolin提交算力会把算力提交到一个矿机上的问题
                            增加了config版本,配置好config直接启动即可
2021-12-21 17:39    2.6.2>>>增加了-clientNum参数 限制最大矿机连接数,可以防止cc攻击
2021-12-21 17:39    2.6.1>>>可能修复了部分矿池崩溃问题
2021-12-21 02:03    2.6.0>>>
                    1.大幅提升稳定性。
                    2.对ethermine,f2pool,poolin,2miners,ezil,nanopool进行了深度优化。（必须使用官方域名节点,否则程序不知道）
                    3.显示矿池延迟
                    4.抽水百分比现在会按照份额难度换算后呈现
                    5.增加了防DNS污染
2021-12-16 18:06    2.5.7>>>增加了两个参数
                    -reConnect 矿池多久不下发任务重连 默认10秒
                    -config 从yml配置文件启动默认为空
                    说明文档增加了linux下后台运行如何查看和linux下如何更新软件的代码,不会的小伙伴可以看一下
                    修复了在ok 币安 蚂蚁矿池下用户名错误导致崩溃的bug
2021-12-15 13:09    2.5.6>>>稳如老狗版

目前的抽水方式为随机抽水,算力曲线不会像心电图那样,更加合理
2.5.5以上版本可以查看抽水的份额了(ps:当代理矿池和抽水矿池不一样时需要根据矿池算力自己算一下百分比)
```
