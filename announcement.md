#### 当前版本：{BUILD_VERSION}({BUILD_DATE})
#### 最新版本：[V6.0.5_ETHASH(2022-03-24)](https://github.com/MinerPr0xy/MinerProxy/releases/tag/v6.0.5) - [[历史更新日志]](https://github.com/MinerPr0xy/MinerProxy/releases)
#### 联系我们：[Telegram 讨论群组(欢迎向我们提出建议)](https://t.me/Miner_Proxy)、[GitHub](https://github.com/MinerPr0xy/MinerProxy)
#### 联系我们：QQ群：683918874、微信：edavhdl（备注：加群）
----
#### V6.0.5更新內容：此次版本為大版本更新，强烈推荐更新。
- 程序初次安装后网页后台登录端口修改为随机端口，初始弱密码修改为随机密码
- 随机密码windows系统保存置程序目录下“pass.txt”，linux系统保存至安装目录“/etc/MinerProxy/pass.txt”

- 新增新款专业矿机兼容，针对部分专业矿机进行优化
- 针对A11老版本固件针对性优化，修复一个可能引起崩溃的BUG

- 内置矿池列表新增F2Pool SSL地址(ethssl-asia.f2pool.com:6698)
- 修复部分芯动系列矿机提交到矿池后矿机名变成默认诶efaults的情况
- 修复部分芯动系列矿机提交到矿池后无效份额过高的问题
- 针对芯动系列矿机进行针对性优化并实现完美兼容

- 前端优化：针对部分注意事项添加提示Tips
- 前端优化：禁止用户修改开启状态下的代理池的抽水钱包地址、矿机名、抽水矿池信息，仅允许修改抽水率
- 前端优化：用户修改代理池的抽水钱包地址、矿机名后，添加中文和特殊字符检测并进行提示
- 前端优化：修改代理池修改逻辑，需先应用才可以开启代理池
#### 注意：
- 由于协议差异, 目前无法实现跨协议抽水, 所以如果设置CrazyPool为归集目标的话需要客户端均使用NiceHash/Stratum2协议。
----
#### 掉线原因参考表：
- EOF: 客户端主动发出的下线请求
- i/o timeout: 长时间未收到客户端的提交
- reset bt peer: TCP连接被重置，可能是綫路波动丢包或阻断
