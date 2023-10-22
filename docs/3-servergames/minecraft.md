# 我的世界（Minecraft）
包含最常用的Mod和插件后台：PaperMC，Forge，CurseForge，Spigot

---

## 1.推荐配置

**2C/4G起跳，4C/8G非常流畅，8C/16属于大服，更高配置适合百人或MOD服**  
**由于部分功能是单核心处理的，所以单核心性能对于多人/大量物品的模组服影响非常大**  
CPU升级路线：Intel-E5 < Ryzen2000 < Intel-10th < Ryzen3000 < Ryzen5000 < Ryzen7000  
<br>

## 2.开服教程

**由于MC各类分支较多，以下为不同分支的后台教程**

| Minecraft服务端版本号 | JDK/Java推荐版本 |
| -------------------- | ---------------- |
| 1.7-                 | 8                |
| 1.8+                 | 8/11             |
| 1.12+ ~ 1.15+        | 8/11             |
| 1.16+                | 11/16            |
| 1.17+ ~ 1.19+        | 16/17            |
| 1.20+                | 17/18            |

### 2.1.Vanilla

- **原版优化不是很好，通常建议使用Paper，除非是最新版**  
但需要注意Paper默认关闭了部分游戏特性，来防止服务器卡顿
- 比如：刷沙机的传送门周边区域加载，所以需要两个人在传送门两边
- 比如：地毯机的位移刷物品特性（可以在Paper的Global设置里面开启）  
  
### 2.2.Paper

- Paper为Bukkit的分支，同时兼容Spigot，但仍有部分插件在两者之间存在兼容性问题  
Paper的插件可以直接放入**插件文件夹Plugins**里，通常可以从[Spigot MC](https://www.spigotmc.org/)下载  
  
- Paper的**最优开机指令可以在[flags.sh](https://flags.sh/)生成**（注意勾选Pterodactyl）  
但务必请记得**内存Heap上限最高为50%-75%的分配内存**  
**否则服务器JVM内存增长过程中可能触发内存限制导致停机**  

### 2.3.Forge

**警告：强烈不建议新手玩家，自己组装中大型模组包，Debug问题将会非常麻烦**
![Forge后台](\assets\minecraft\forge-1.png)  

#### 2.3.1.更换Forge版本

> 1. 去 启动 页面，更改 FORGE VERSION 和 MINECRAFT VERSION 两个参数。
> 2. 在 启动 页面，根据对应的版本，在右上角，选择正确的Java。
> 3. 去 文件 页面，删除当前服务器所有文件。
> 4. 去 设置 页面，点击 重新安装服务器, 等待服务器安装完成。
> 5. 启动服务器，弹窗 选择接受EULA后，服务器会重启正确运行。  

#### 2.3.2.Forge添加Mod

> 1. 首先在客户端正确添加mod。
> 2. 测试 mod 在本地正常工作后，拷贝到服务器 mod 文件夹内。
> 3. 分发 mod 和游戏配置。
> 4. 其他玩家载入 mod 和游戏配置。
> 5. [大文件/多文件传输-图文教程](https://github.com/KenRen98/MLSG-Manual/blob/main/1.2-%E6%9C%8D%E5%8A%A1%E5%99%A8%20-%20%E7%AE%A1%E7%90%86%E8%BF%9B%E9%98%B6/%E5%9B%BE%E6%96%87%E6%95%99%E7%A8%8B/1.2.2-%E6%9C%8D%E5%8A%A1%E5%99%A8%E4%BC%A0%E5%A4%A7%E6%96%87%E4%BB%B6.png)  

### 2.4.Spigot

假矿插件会导致严重的网络问题和加载问题，不建议使用  
**推荐直接使用Paper后端**，因为Paper对假矿的优化较好，基本上体验不到卡顿和穿模问题  


### 2.5.CurseForge

通常情况下CurseForge模板需要您申请API后才能使用，[申请地址](https://support.curseforge.com/en/support/solutions/articles/9000208346-about-the-curseforge-api-and-how-to-apply-for-a-key#key)。  
**但MLSG已经获批企业第三方API，可以直接使用，只需用户填入Project-ID和File-ID即可。**  
![CurseForge后台](\assets\minecraft\curseforge-panel.png)
<center>**Project-ID可以在对应CurseForge模组包的主页右侧找到**  
**File-ID则在，具体文件页面的顶部URL最后部分（服务器必须要Server Pack的File-ID）**</center>

![CurseForge-IDs](\assets\minecraft\curseforge-1.png)
![CurseForge-IDs](\assets\minecraft\curseforge-2.png)
![CurseForge-IDs](\assets\minecraft\curseforge-3.png)
![CurseForge-IDs](\assets\minecraft\curseforge-4.png)  
<br>

## 3.注意事项

一些通用的注意事项，强烈建议阅读  

### 3.1.已知BUG

- 请务必为服务器设置有限的内存（数字或百分比），否则MC的安装脚本将不会正常运行
- 由于MC运行在JVM里面，所以内存显示并不正确，**强烈推荐使用Spark**查看服务器状态  

### 3.2.内存设置

- 对于启动指令的参数，**必须设置有限的Heap大小**，因为JVM本身需要一部分额外内存，
- **Heap的最大内存为分配内存的50%-75%之间，或者留2G，比如12G的分配，Heap给10G**
- 部分JVM的Flag**建议不要使用**，包括：**-XX:+DisableExplicitGC**，**-XX:+AlwaysPreTouch**  
  以上Flag可能导致爆内存问题频繁发生，导致服务器频繁触发OOM，自动重启  
<br>

## 4.地图载入速度

- 游戏读图速度主要和内存大小有关，如果内存不够大，已经生成的地图则会载入很慢，一般8G足以，16G-24G最优，大内存一般3-5倍速飞行都会非常流畅的载入地图。  
<br>

## 5.地图生成速度

- 游戏的地图生成速度（未到达的边界区域）和CPU有关系，绝大部分例如Paper和Spigot后端都支持多核心的地图渲染，多核心会显著提升地图生成速度。  
<br>

## 6.Dynmap设置

Dynmap需要额外的端口分配，如果只有一个首选（游戏端口）请联系管理员开通更多端口  
同时也可以为您配置反向代理来提供https和纯地址访问（无需端口号）  
**Dynmap对于较大和较多层的世界，可能占据巨大硬盘空间，建议对其进行专门的设置**  
