# Rust（Rust）
一款多人生存游戏，具有高度自由度和挑战性。

---

## 1.推荐配置

**4C/8G起跳，强烈推荐8G或以上内存。**  
<br>

## 2.开服教程
**重要的服务器配置步骤**

### 2.1.后台和端口配置
本游戏需要4个端口：  
- 主端口：玩家连接的服务器端口  
- Rcon：远程管理（Rust服务器管理器）  
- Query：Steam列表（游戏内列表）  
- APP端口：Rust Companion  

后台设置如下
![后台设置截图](/assets/rust/1.png)
![后台设置截图](/assets/rust/2.png)  

### 2.2.安装设置Mod/插件
**[更多Mod安装的中文教程](https://wiki.biligame.com/rust/%E6%9C%8D%E4%B8%BB:%E5%AE%89%E8%A3%85%26%E6%9B%B4%E6%96%B0%E6%A8%A1%E7%BB%84%E8%A1%A5%E4%B8%81)**  

#### 2.2.1.找Mod
前往 [Umod官网（旧称Oxide）](https://umod.org/plugins?categories=rust&page=1&sort=title&sortdir=asc)寻找Mod  
以下将常用的GUI-Shop作为例子
![Umod页面](/assets/rust/umod1.png)
![Umod页面](/assets/rust/umod2.png)   

#### 2.2.2.装Mod
将下载了的Mod放入Mod文件夹，文件夹位置：`/home/container/oxide/plugins` 如下图
![Mod文件夹](/assets/rust/mod-folder.png)  

#### 2.2.3.调Mod
在文件夹里找到Mod设置文件，文件夹位置：`/home/container/oxide/config` 如下图
![Mod设置](/assets/rust/mod-config.png)  

### 2.3.服务器权限与命令
umod上有写 command / permission  
使用Rust（Oxide）自带的命令 `oxide.grant xxx` 来给玩家对应的权限  
然后就能用对应的功能了（默认的玩家组：admin, default）  

### 2.4.查看与管理玩家组
- `oxide.show groups` 显示所有玩家组  
- `oxide.show group admin` 显示某组内玩家  

### 2.5.设置服务器管理员
- `moderatorid <STEAMID64> <NAME (or) REASON>` 设置服务器管理员  
- `moderatorid <STEAMID64> <NAME (or) REASON>` 设置服务器主人  

### 2.6.保存服务器设置
使用 `server.writecfg` 来保存服务器设置  

<br>

## 3.注意事项

一些通用的注意事项，强烈建议阅读  

### 3.1.服务器同步与区域
通常如果正常的话，跨区的服务器在有人的情况下，每几个小时会同步到别的区域的列表里。（猜测）

### 3.2.区域锁与封禁风险
- 本游戏可能锁区，不保证能在游戏列表找到服务器  
- 如果开Fake人数的也可能导致服务器被封禁（猜测）  
<br>

