## Minimap Renderer

![Tests](https://github.com/WoWs-Builder-Team/minimap_renderer/actions/workflows/tests.yml/badge.svg)

Minimap Renderer parses World of Warships replays to create a timelapse video that resembles the in-game minimap.

 ![enter image description here](images/minimap.gif)

Try it on in [Google Colab](https://colab.research.google.com/drive/1OyomQe5pHaDDozpt0rs9JMg54No8QMjE?usp=sharing)

## minimap_renderer 项目的web服务支持

本项目基于https://github.com/WoWs-Builder-Team/minimap_renderer fork源码，版本更新请参考该源项目

服务端启动文件render_web.py参考自https://github.com/JustOneSummer/minimap_renderer_web

本项目为窝窝屎水表机器人HikariBot的额外功能支持，使用前请先安装HikariBot

Nonebot2版本HikariBot https://github.com/benx1n/HikariBot

Nonebot1版本HikariBot https://github.com/benx1n/wows-stats-bot

### Installation

1.拉取docker镜像
```
docker pull mackerelfish/wows_minimap_renderer:latest
```
国内用户连不上官方docker源可使用腾讯云镜像仓库下载并添加镜像别名
```
docker pull ccr.ccs.tencentyun.com/mackerel/wows:wows-render
docker tag ccr.ccs.tencentyun.com/mackerel/wows:wows-render mackerelfish/wows_minimap_renderer:latest
```
2.启动docker容器，-v映射你自己的文件路径
```
docker run -d \
-p 11452:11452 \
--name wows_minimap_renderer \
-v /{your own path}/minimap_render/temp/:/minimap_render/temp/ \
--restart=always \
mackerelfish/wows_minimap_renderer:latest
```
3.替换配置里面ip为宿主机内网ip以防docker访问失败，端口号为11452，即可使用

### License

This project is licensed under the GNU AGPLv3 License.
