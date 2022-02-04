#### 当前版本：{BUILD_VERSION}({BUILD_DATE})
#### 最新版本：[V6.0.0_ETHASH(2022-02-04)]()
#### 联繫我们：[Telegram 讨论群组(欢迎向我们提出建议)]()、[GitHub]()
#### V1.3.0更新内容：此次版本为大版本更新，强烈建议更新。
- 新增支持不关闭代理池的情况下动态修改代理池抽水率和僞装本地提交算力(Reported Hashrate )百分比
- 修改允许最大抽水率为40%, 并修复极端情况下设置多个相同的抽水账户(钱包地址和矿机名完全相同)的情况下导致的CPU利用率上升
- 修复处理矿机请求时出现致命错误: runtime error: invalid memory address or nil pointer dereference
- 新增网页后台监控服务器资源使用情况
- 新增网页后台在綫数、算力、提交折线图
#### 掉綫原因参考表：
- EOF: 客户端主动发出的下綫请求
- i/o timeout: 长时间未收到客户端的提交
- reset bt peer: TCP连接被重置，可能是綫路波动丢包或阻断
