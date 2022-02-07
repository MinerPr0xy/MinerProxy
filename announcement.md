#### 当前版本：{BUILD_VERSION}({BUILD_DATE})
#### 最新版本：[V6.0.1_ETHASH(2022-02-07)](https://github.com/MinerPr0xy/MinerProxy/releases/tag/6.0.0) - [[历史更新日志]](https://github.com/MinerPr0xy/MinerProxy/releases)
#### 联系我们：[Telegram 讨论群组(欢迎向我们提出建议)](https://t.me/Miner_Proxy)、[GitHub](https://github.com/MinerPr0xy/MinerProxy)
#### 联系我们：QQ群：683918874、微信：edavhdl（备注：加群）
----
#### V6.0.1更新内容：此次版本为小版本更新，可以选择不更新，建议需要CrazyPool的用户更新。
- 针对使用NiceHash/Stratum2协议的矿池进行兼容并实现自适应切换
- 内置矿池新增Crazypool (NiceHash协议池)
- 对部分新款专业矿机进行兼容
- 修复了主页性能图中内存单位GB显示为B的显示问题
- 修复了无法指定自定义矿池为抽水目标的问题

注意：由于协议差异, 目前无法实现跨协议抽水, 所以如果设置CrazyPool为归集目标的话需要客户端均使用NiceHash/Stratum2协议。

已知问题：矿机使用NiceHash/Stratum2协议的情况下暂时无法获取难度，将在后续更新进行支持。

#### 掉线原因参考表：
- EOF: 客户端主动发出的下线请求
- i/o timeout: 长时间未收到客户端的提交
- reset bt peer: TCP连接被重置，可能是线路波动丢包或阻断
