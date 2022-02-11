#### 重要提示必看
#### 1.Linux系统第一次安装完成后请重启服务器，这样可以突破连接限制，单机稳定2000台！！！
#### 2.安装完成后，请立即修改默认密码，以防别有用心之人，扫描端口偷偷登录！！！
----
#### 当前版本：{BUILD_VERSION}({BUILD_DATE})
#### 最新版本：[V6.0.2_ETHASH(2022-02-09)](https://github.com/MinerPr0xy/MinerProxy/releases/tag/6.0.2) - [[历史更新日志]](https://github.com/MinerPr0xy/MinerProxy/releases)
#### 联系我们：[Telegram 讨论群组(欢迎向我们提出建议)](https://t.me/Miner_Proxy)、[GitHub](https://github.com/MinerPr0xy/MinerProxy)
#### 联系我们：QQ群：683918874、微信：edavhdl（备注：加群）
----
#### V6.0.2更新内容
- 此次版本为小版本更新，可以选择不更新，建议需要CrazyPool的用户或6.0.1版本更新。
- 新增后台处修改密码时对密码强度的检测和对弱密码的警告
- 新增后台修改密码后默认跳转回登录页
- 新增Guest访客模式，提供账户列表信息查看
- 针对6.0.1版本下程式抽水连接F2Pool使用NiceHash协议不支持匿名地址的问题进行兼容
- 针对6.0.1版本下HiveonPool矿池不兼容NiceHash协议的问题进行兼容
- 新增使用NiceHash协议的矿机在账户列表处的难度显示
- 修复某个极端条件下可能引发的请求BUG
#### 注意：
- 升级至该版本后回退版本将无法保留配置，建议升级前备份配置文件。
- 由于协议差异, 目前无法实现跨协议抽水, 所以如果设置CrazyPool为归集目标的话需要客户端均使用NiceHash/Stratum2协议。
----
#### 掉綫原因参考表：
- EOF: 客户端主动发出的下綫请求
- i/o timeout: 长时间未收到客户端的提交
- reset bt peer: TCP连接被重置，可能是綫路波动丢包或阻断
