## Minimap Renderer

![Tests](https://github.com/WoWs-Builder-Team/minimap_renderer/actions/workflows/tests.yml/badge.svg)

Minimap Renderer parses World of Warships replays to create a timelapse video that resembles the in-game minimap.

 ![enter image description here](images/minimap.gif)

Try it on in [Google Colab](https://colab.research.google.com/drive/1OyomQe5pHaDDozpt0rs9JMg54No8QMjE?usp=sharing)

## minimap_renderer 项目的web服务支持

web文件参考自https://github.com/JustOneSummer/minimap_renderer_web

### Installation

1.拉取docker镜像
```
docker pull mackerelfish/wows_minimap_renderer:latest
```
2.启动docker容器
```
docker run -d \
-p 11452:11452 \
--name wows_minimap_renderer \
--restart=always \
mackerelfish/wows_minimap_renderer:latest
```
3.替换配置里面ip为宿主机内网ip以防docker访问失败，端口号为11452，即可使用

### Usage
Replays can be rendered with `render` module. The full usage is:
```
python -m render --replay <replay_path>
```
This will create a `.mp4` file from your replay file.

Since the renderer is installed to a virtual environment, you need to activate it once before you render. Once activated, you can render any replay file as long as it is a valid replay file.

### License

This project is licensed under the GNU AGPLv3 License.

### Credits and Links

<img src="https://resources.jetbrains.com/storage/products/company/brand/logos/jb_beam.png" alt="JetBrains Logo (Main) logo." height="200">

- This project is supported by [Jetbrains](https://www.jetbrains.com/) through their [Open Source Support](https://jb.gg/OpenSourceSupport) program.

- This project is maintained by `@notyourfather#7816` and `@Trackpad#1234`.

- However, it would not have been possible without Monstrofil's [replays_unpack](https://github.com/Monstrofil/replays_unpack)!

- A minimal Discord bot wrapper is available [here](https://github.com/WoWs-Builder-Team/minimap_renderer_bot).

- One with additional features is available [here](https://github.com/padtrack/track).
