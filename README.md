# 翼龙面板-中文开服说明书

翼龙面板开服的中文说明书，各类开服说明的文档和截图教程。  
本站涵盖两个部分，1是**中文手册网站**，2是**自动化部署脚本**。  
<<<<<<< HEAD
该文档的初衷是用于避免每次手动向用户发送教程/说明书等内容。  
=======

该文档的初衷是用于避免每次手动向用户发送教程/说明书，配置文件模板，后台指令表等内容。  

**图文教程请看：[翼龙面板MLSG图文教程网站](https://manual.mr-leaves.com/)**

>>>>>>> b6f819b34f3100bf07a506fceab3e4ab8ed9538e
本文档基于[翼龙中国](https://github.com/pterodactyl-china/panel)面板而撰写，同样适用于[Pterodactyl原版](https://github.com/pterodactyl/panel)面板  
游戏预设(Egg)除原版自带以外，均来自以下俩开源Repo：[最全的主Repo](https://github.com/parkervcp/eggs/tree/master)，[较小的一个Repo](https://github.com/DEVBenSon/pterodactyl-eggs/tree/main)  

![Alt](https://repobeats.axiom.co/api/embed/477c7f5014e1e9e0cfbc01100dbf73d9a59e7556.svg "实时数据")  


## 内容简介

**开服的教程和说明**，不同游戏有不同的**注意事项**和**设置教程**。  
同时还会提供**推荐配置**和**已知Bug的解决方案**或者有用的Repo。  
每次安装或者重装都会自动化下载最新的完整说明书，正确解压为中文。


## 适配镜像
- Debian
- Oracle Linux
- Alpine Linux


## 包含游戏

- **我的世界  -  Minecraft**
  - Forge
  - CurseForge
  - Spigot
  - Paper
  - Vanilla

- **反恐精英  -  Counter-Strike: Global Offensive**

- **方舟生存进化 - ARK Survival Evolved**
  
- **腐蚀  -  Rust**

- **英灵神殿  -  Valheim**

- **饥荒联机版  -  Don't Starve Together**

- **僵尸毁灭工程  -  Project Zomboid**

- **森林之子  -  Son of The Forest**

- **雨中冒险2  -  Risk of Rain 2**


<<<<<<< HEAD

=======
## 使用方法

请将以下安装指令填在需要的Egg的安装脚本的最后  
以下是标准安装模板，使用临时下载7z解压来避免unzip-6.0不能正确解压中文的问题。
```安装脚本
# MLSG
HOME="/mnt/server"
cd $HOME
curl -sSL -o mlsg_install.sh https://github.com/KenRen98/MLSG-Manual/raw/main/Panel%E5%B7%A5%E5%85%B7/mlsg_manual.sh
chmod +x mlsg_install.sh
./mlsg_install.sh
rm $HOME/mlsg_install.sh
```  

如果根目录不是**/mnt/server**请根据正确目录，更改脚本中的HOME参数。
```设置目录
HOME=<HOME Directory>
# 一般都为/mnt/server
```
>>>>>>> b6f819b34f3100bf07a506fceab3e4ab8ed9538e
