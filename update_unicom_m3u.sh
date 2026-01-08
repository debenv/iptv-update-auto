#!/bin/bash

rm unicom.m3u -fr

# 下载 unicom.m3u 文件
curl -o unicom.m3u https://raw.githubusercontent.com/chilinha/tv/refs/heads/main/unicom.m3u

# 将 rtp:// 替换为 http://192.168.33.3:4022/udp/
sed -i 's|rtp://|http://192.168.33.3:4022/udp/|g' unicom.m3u

# 将 logo 路径替换
sed -i 's|https://gitee.com/chilinha/mytv/raw/master/|http://192.168.33.90:58418/tv/tvlogo/raw/branch/master/|g' unicom.m3u

echo "处理完成，文件已保存为 unicom.m3u"
