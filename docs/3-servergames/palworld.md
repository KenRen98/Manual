# 幻兽帕鲁（Palworld）
宝可梦+ARK+我的世界，缝合游戏，捕捉Pal，战斗，生存，建筑，开放世界游戏。

---

## 1.推荐配置

**4C/16G起跳，适合最多16人，8C/64G顶配，适合16-32人。**  
**该游戏由于后台优化不佳，内存占用极高，CPU占用基本保持在2-3核心**  
**后期流畅度，主要依靠CPU核心性能来支撑，人多推荐Ryzen3000往上**    
CPU升级路线：Intel-E5 < Ryzen2000 < Intel-10th < Ryzen3000 < Ryzen5000 < Ryzen7000
<br>

## 2.开服教程

**设置文件位置如下，每次修改务必关机修改，改完再开机**
**Linux（默认）: /home/container/Pal/Saved/Config/LinuxServer/PalWorldSettings.ini**  
**Windows（模组）: /home/container/Pal/Saved/Config/WindowsServer/PalWorldSettings.ini**  

### 2.1.方法一：使用在线设置工具
点击使用 **[Palworld 服务器设置工具](https://pal-conf.bluefissure.com/)**
<center>![配置生成器](/assets/palworld/configer.png)</center>
<center>**使用配置生成器**</center>  

<center>![配置生成器](/assets/palworld/configer-result.png)</center>
<center>**拷贝生成的代码**</center>  

<center>![设置文件](/assets/palworld/setting.png)</center>
<center>**粘贴在设置文件**</center>  

### 2.2.方法二：手动修改设置文件
请从根目录 **`DefaultPalWorldSettings.ini`** 模板文件内，拷贝代码模板，并黏贴到对应的设置文件  
**Linux（默认）: /home/container/Pal/Saved/Config/LinuxServer/PalWorldSettings.ini**  
**Windows（模组）: /home/container/Pal/Saved/Config/WindowsServer/PalWorldSettings.ini**  

<center>![设置模板](/assets/palworld/defualt_config.png)</center>
<center>**找到设置模板**</center>  

<center>![拷贝代码](/assets/palworld/copy_default.png)</center>
<center>**拷贝设置代码**</center>  

<center>![设置文件](/assets/palworld/setting.png)</center>
<center>**粘贴在设置文件**</center>  

### 2.3.游戏内：管理员登录和指令
**要使用控制台指令**，**请在游戏内输入`/adminpassword <Admin密码>`**，如下图：  
**注：管理员密码在后台“启动”分页，找 AdminPassword 值**  
<center>![管理员登陆](/assets/palworld/enter_password.png)</center>
<center>**管理员登陆指令**</center>  

<center>![管理员登陆成功](/assets/palworld/password_success.png)</center>
<center>**成功登录管理员账户提示”**</center>
<br>

**控制台指令，如下**  
<center>

| 指令语法                            | 指令说明                           |
|------------------------------------|-------------------------------------------------|
| `/Shutdown [Seconds] [Message Text]` | 此命令将在指定秒数延迟过后，带有指定消息关闭服务器。    |
| `/DoExit`                            | 使用此命令立即停止服务器。                        |
| `/Broadcast [Message Text]`          | 从服务器向所有连接的玩家广播一条消息。              |
| `/KickPlayer [Player ID or Steam ID]` | 将指定玩家从服务器断开连接。                       |
| `/BanPlayer [Player ID or Steam ID]`  | 禁止指定玩家进入服务器。                          |
| `/TeleportToPlayer [Player ID or Steam ID]` | 将你传送到指定玩家的位置。该命令不能从控制台运行。  |
| `/TeleportToMe [Player ID or Steam ID]`   | 将指定玩家传送到你的位置。这个命令也不能从控制台使用。 |
| `/ShowPlayers`                        | 显示所有连接玩家的玩家ID和Steam ID等信息。          |
| `/Info`                               | 显示有关服务器的信息。                             |
| `/Save`                               | 此命令强制保存世界数据。                          |

</center>

## 3.进入服务器（教程）
**要加入独立服务器**，**请按照以下流程**，如下图：
<center>![连接服务器](/assets/palworld/connect1.png)</center>
<center>**选择菜单第二个**</center>  

<center>![连接服务器](/assets/palworld/connect2.png)</center>
<center>**输入地址，并点“联系”**</center>
<br>

## 4.已知游戏BUG
**存档损坏无法修复，请格外注意会丢档的BUG**  
<center>

| 已知问题                           | 解决方法 / 当前状态         |
|---------------------------------------------|-----------------------|
| 独立服务器，直接连接无法输入密码              | 已修复    |
| 工会中玩家退出，会导致其他未退出玩家烂档     | 已修复            |
| 独立服务器，无法在游戏列表显示服务器          | 已修复            |
| 营地内的最大Pal数量上限设置无效              | 无效设置            |
| 无法调整Boss刷新时间，默认为1小时            | 已修复            |
| 内存泄漏，游戏每隔一段时间会爆内存重启   | 已修复       |
| 卡Bug抓高塔Boss可能导致后期烂档              | 已修复          |
| 使用近期连接过的列表加入，会提示创建角色 | 已修复          |
| 各种卡地形，看起来像是服务器卡顿          | 请以Server FPS为准       |

</center>
<br>

## 5.服务器存档位置
**存档文件位置：`/home/container/Pal` 里的 `Saved` 文件夹**  
**如果要下载整个存档**，**压缩整个文件夹并下载压缩文件**，如下图：  
<center>![存档文件夹](/assets/palworld/save_folder.png)</center>
<center>**游戏存档，设置都在里面**</center>  

<center>![压缩存档文件夹](/assets/palworld/save.png)</center>
<center>**压缩整个文件夹，以搬运**</center>

<center>![下载压缩文件](/assets/palworld/download_save.png)</center>
<center>**下载压缩后的存档文件夹**</center>

**如果要重新开始游戏，可以删除整个`Saved`文件夹**
**如果想保存设置，但删除存档，可以删除`Saved/SaveGames`文件夹**
<br>
