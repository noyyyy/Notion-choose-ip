# Notion-choose-ip
选择最优的Notion cloudflare节点. 目前只有Linux版脚本

# 使用说明

需要安装 fping, curl

```shell
sudo apt install fping curl
```

仅在Deepin Linux下做过测试, 测试电脑配置为6核12线程, 16G内存. `available_ip.sh`脚本中, 由于并行较多, 大于占用了50%的CPU和20%多的内存, 使用时请注意您的电脑配置, 防止卡死. 方便起见, 直接运行`pingtest.sh`即可

脚本都在src文件里,

- cfip.txt: 所有的Cloudflare cdn节点
- available_ip.sh: 遍历测试找出可用于Notion.so的Cloudflare节点, 得到`avaip.txt`
- pingtest.sh: 选择丢包率不高于于10%的节点并测速, 得到最快的ip输出到`ip.txt`中


# 欢迎pr

# LICENSE

[MIT](https://github.com/Jerrywang959/Notion-choose-ip/blob/master/LICENSE)