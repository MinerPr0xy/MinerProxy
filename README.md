# MinerProxy
最稳定的ETH以太坊代理矿池，MinerProxy/矿池代理，支持TCP和SSL协议，支持自定义抽水，高性能高并发，支持web界面管理。

<div align="center">
<img src="https://user-images.githubusercontent.com/96627099/147362629-ca5f83e0-13b0-4f37-b587-228a86ac1429.png" />
<img src="https://user-images.githubusercontent.com/96627099/147362631-cbb07053-f8c7-4258-aa0f-cc01ddc96e15.png" />
</div>

# 矿工交流 TG电报群：https://t.me/Miner_Proxy

<div align="center">
<img src="https://user-images.githubusercontent.com/96627099/147364637-3db2caea-f536-4a9c-ad7d-d062559d46fe.png" width="500" height="500" />
</div>

# Liunx-使用方法
```bash
git clone https://github.com/MinerPr0xy/MinerProxy.git
cd MinerProxy
./minerProxy_2.6.6T2_linux
```

运行成功后访问 IP:18888 (如：127.0.0.1:18888 注意开放端口) 进行配置即可。
### 后台运行（注意后面的&）运行完再敲几下回车
```bash
nohup ./minerProxy_2.6.6T2_linux &
```
### 后台运行时关闭
```bash
killall minerProxy_2.6.6T2_linux
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
./minerProxy_2.6.6T2_windows.exe
```
或双击打开minerProxy_2.6.6T2_windows.exe 运行成功后访问 IP:18888 (如：127.0.0.1:18888 注意开放端口) 进行配置即可。

# 更新日志
```bigquery
2021-12-24 00:30    2.6.6T2>>>修复若干bug
2021-12-23 11:17    2.6.5>>>增加了web版本,优化部分代码
2021-12-23 08:07    2.6.4>>>代码优化,提升稳定性
2021-12-22 03:06    2.6.3>>>修复了poolin提交算力会把算力提交到一个矿机上的问题
                            增加了config版本,配置好config直接启动即可
2021-12-21 18:39    2.6.2>>>增加了-clientNum参数 限制最大矿机连接数,可以防止cc攻击
2021-12-21 18:39    2.6.1>>>可能修复了部分矿池崩溃问题
2021-12-21 03:03    2.6.0>>>
                    1.大幅提升稳定性。
                    2.对ethermine,f2pool,poolin,2miners,ezil,nanopool进行了深度优化。（必须使用官方域名节点,否则程序不知道）
                    3.显示矿池延迟
                    4.抽水百分比现在会按照份额难度换算后呈现
                    5.增加了防DNS污染
2021-12-16 19:06    2.5.7>>>增加了两个参数
                    -reConnect 矿池多久不下发任务重连 默认10秒
                    -config 从yml配置文件启动默认为空
                    说明文档增加了linux下后台运行如何查看和linux下如何更新软件的代码,不会的小伙伴可以看一下
                    修复了在ok 币安 蚂蚁矿池下用户名错误导致崩溃的bug
2021-12-15 14:09    2.5.6>>>稳如老狗版

目前的抽水方式为随机抽水,算力曲线不会像心电图那样,更加合理
2.5.5以上版本可以查看抽水的份额了(ps:当代理矿池和抽水矿池不一样时需要根据矿池算力自己算一下百分比)
```
