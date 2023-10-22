# 翼龙面板-中文说明书自动化脚本

## 内容简介

**一些开服的模板配置，开服例子和服务器后台指令列表**。  
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


## 使用方法

请将以下安装指令填在需要的Egg的安装脚本的最后  
以下是标准安装模板，使用临时下载7z解压来避免unzip-6.0不能正确解压中文的问题。
```安装脚本
# MLSG
HOME="/mnt/server"
cd $HOME
curl -sSL -o mlsg_install.sh https://github.com/Mr-Leaves-Server-Group/Manual/raw/deploy/Panel%E5%B7%A5%E5%85%B7/mlsg_manual.sh
chmod +x mlsg_install.sh
./mlsg_install.sh
rm $HOME/mlsg_install.sh
```  

如果根目录不是**/mnt/server**请根据正确目录，更改脚本中的HOME参数。
```设置目录
HOME=<HOME Directory>
# 一般都为/mnt/server
```
