# Notion-choose-ip
选择最优的Notion cloudflare节点. 由于个人能力限制, 目前只有Linux版脚本

**请在遵守法律的情况下使用此脚本**

# 使用说明

需要安装 fping, curl

```shell
sudo apt install fping curl
```

简便起见, 直接运行`pingtest.sh`即可.

脚本都在src文件里,

- getcfip.sh: 获取Cloudflare cdnCIDR地址, 并转为ip地址, 并选择最后一位相同的ip地址, 得到`cfip.txt`
- available_ip.sh: 遍历测试找出可用于Notion.so的Cloudflare节点, 得到`avaip.txt`
- pingtest.sh: 选择丢包率不高于于10%的节点并测速, 得到最快的ip输出到`ip.txt`中

# 鸣谢

- 灵感来源和部分内容借鉴: [foundations/Cloudflare-check-ip](https://github.com/foundations/Cloudflare-check-ip)
- 使用了 [smackerdodi/cidr2ip](https://github.com/smackerdodi/cidr2ip) 中的 `cidr2ip.py` 文件转化CIDR地址为ip地址
- ip选择方式参考了 [olixu/cloudflare-ip-ping](https://github.com/olixu/cloudflare-ip-ping)

# 欢迎pr

# LICENSE

[MIT](https://github.com/Jerrywang959/Notion-choose-ip/blob/master/LICENSE)