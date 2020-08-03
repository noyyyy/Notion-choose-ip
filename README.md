# Notion-choose-ip
选择最优的Notion cloudflare节点. 目前只有Linux版脚本

**请在遵守法律的情况下使用此脚本**

# 使用说明

需要安装 fping, curl

```shell
sudo apt install fping curl
```

简便起见, 直接运行`pingtest.sh`即可. 其他前置准备脚本平行较大, 请考虑电脑配置后再决定是否运行

脚本都在src文件里,

- cfip.txt: 所有的Cloudflare cdn节点
- available_ip.sh: 遍历测试找出可用于Notion.so的Cloudflare节点, 得到`avaip.txt`
- pingtest.sh: 选择丢包率不高于于10%的节点并测速, 得到最快的ip输出到`ip.txt`中

# 鸣谢

- 灵感来源: 
- 使用了 https://github.com/smackerdodi/cidr2ip 中的 `cidr2ip.py` 文件转化CIDR地址为ip地址

# 欢迎pr

要求: 轻量化, 核心任务只能有系统自带脚本完成

# LICENSE

[MIT](https://github.com/Jerrywang959/Notion-choose-ip/blob/master/LICENSE)