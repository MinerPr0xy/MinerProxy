#### 重要提示必看
#### 1.Linux系统第一次安装完成后请重启服务器，这样可以突破连接限制，单机稳定2000台！！！
#### 2.安装完成后，请立即修改默认密码，以防别有用心之人，扫描端口偷偷登录！！！
----
#### 当前版本：{BUILD_VERSION}({BUILD_DATE})
#### 最新版本：[V6.0.3_ETHASH(2022-02-10)](https://github.com/MinerPr0xy/MinerProxy/releases/tag/6.0.2) - [[历史更新日志]](https://github.com/MinerPr0xy/MinerProxy/releases)
#### 联系我们：[Telegram 讨论群组(欢迎向我们提出建议)](https://t.me/Miner_Proxy)、[GitHub](https://github.com/MinerPr0xy/MinerProxy)
#### 联系我们：QQ群：683918874、微信：edavhdl（备注：加群）
----
#### V6.0.3更新内容：此次版本为小版本更新，可以选择不更新，建议需要CrazyPool的用户或6.0.1/6.0.2版本更新。
- 优化6.0.1/6.0.2版本的内存佔用情况
- 修复ETC内置矿池地址中 2Miners 亚洲节点信息配置错误的问题
- 修复ETC自定义矿池地址无法连接的问题
- 修复6.0.2无法动态修改抽水率的问题
#### 注意：
- 由于协议差异, 目前无法实现跨协议抽水, 所以如果设置CrazyPool为归集目标的话需要客户端均使用NiceHash/Stratum2协议。
----
#### 掉綫原因参考表：
- EOF: 客户端主动发出的下綫请求
- i/o timeout: 长时间未收到客户端的提交
- reset bt peer: TCP连接被重置，可能是綫路波动丢包或阻断
