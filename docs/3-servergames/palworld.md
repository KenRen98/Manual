# 幻兽帕鲁（Palworld）
一款多人合作的，纯爽动作射击游戏。

---

## 1.推荐配置

**4C/16G起跳，适合最多16人，8C/64G顶配，适合16-32人。**  
**该游戏由于后台优化不佳，内存占用极高，CPU占用基本保持在2-3核心**  
**后期流畅度，主要依靠CPU核心性能来支撑，人多推荐Ryzen3000往上**    
CPU升级路线：Intel-E5 < Ryzen2000 < Intel-10th < Ryzen3000 < Ryzen5000 < Ryzen7000
<br>

## 2.开服教程
**在服务器安装脚本运行完成后，请按照以下教程设置服务器。**

### 2.1.服务器设置
请从根目录 **`DefaultPalWorldSettings.ini`** 模板文件内拷贝游戏设置代码，并黏贴到设置文件  
**`/home/container/Pal/Saved/Config/LinuxServer/PalWorldSettings.ini`**，具体操作如下图：  
  
<center>![设置模板](/assets/palworld/defualt_config.png)</center>
<center>**找到设置模板**</center>  

<center>![拷贝代码](/assets/palworld/copy_default.png)</center>
<center>**拷贝设置代码**</center>  

<center>![设置文件](/assets/palworld/setting.png)</center>
<center>**粘贴在设置文件**</center>  

<br>
**您也可以从以下代码框，复制默认设置代码：**  
**注：推荐用上述方法，避免下方代码没更新**
```
[/Script/Pal.PalGameWorldSettings]
OptionSettings=(Difficulty=None,DayTimeSpeedRate=1.000000,NightTimeSpeedRate=1.000000,ExpRate=1.000000,PalCaptureRate=1.000000,PalSpawnNumRate=1.000000,PalDamageRateAttack=1.000000,PalDamageRateDefense=1.000000,PlayerDamageRateAttack=1.000000,PlayerDamageRateDefense=1.000000,PlayerStomachDecreaceRate=1.000000,PlayerStaminaDecreaceRate=1.000000,PlayerAutoHPRegeneRate=1.000000,PlayerAutoHpRegeneRateInSleep=1.000000,PalStomachDecreaceRate=1.000000,PalStaminaDecreaceRate=1.000000,PalAutoHPRegeneRate=1.000000,PalAutoHpRegeneRateInSleep=1.000000,BuildObjectDamageRate=1.000000,BuildObjectDeteriorationDamageRate=1.000000,CollectionDropRate=1.000000,CollectionObjectHpRate=1.000000,CollectionObjectRespawnSpeedRate=1.000000,EnemyDropItemRate=1.000000,DeathPenalty=All,bEnablePlayerToPlayerDamage=False,bEnableFriendlyFire=False,bEnableInvaderEnemy=True,bActiveUNKO=False,bEnableAimAssistPad=True,bEnableAimAssistKeyboard=False,DropItemMaxNum=3000,DropItemMaxNum_UNKO=100,BaseCampMaxNum=128,BaseCampWorkerMaxNum=15,DropItemAliveMaxHours=1.000000,bAutoResetGuildNoOnlinePlayers=False,AutoResetGuildTimeNoOnlinePlayers=72.000000,GuildPlayerMaxNum=20,PalEggDefaultHatchingTime=72.000000,WorkSpeedRate=1.000000,bIsMultiplay=False,bIsPvP=False,bCanPickupOtherGuildDeathPenaltyDrop=False,bEnableNonLoginPenalty=True,bEnableFastTravel=True,bIsStartLocationSelectByMap=True,bExistPlayerAfterLogout=False,bEnableDefenseOtherGuildPlayer=False,CoopPlayerMaxNum=4,ServerPlayerMaxNum=32,ServerName="Default Palworld Server",ServerDescription="",AdminPassword="",ServerPassword="",PublicPort=8211,PublicIP="",RCONEnabled=False,RCONPort=25575,Region="",bUseAuth=True,BanListURL="https://api.palworldgame.com/api/banlist.txt")
```
<br>

### 2.2.设置和倍率
**在设置文件内直接修改数值**，**每个设置对应客户端的设置**，如下：  
**注：每次修改务必关机修改，改完再开机，使用重启会导致修改后设置被刷回**  
<center>

| 设置名称                                   | 默认数值 | 中文描述                              |
|-------------------------------------------|---------------|----------------------------------------------------|
| `Difficulty`                               | None          | 难度级别                                             |
| `DayTimeSpeedRate`                         | 1.000000      | 白天时间速率                                         |
| `NightTimeSpeedRate`                       | 1.000000      | 夜晚时间速率                                         |
| `ExpRate`                                  | 2.000000      | 经验值获取率                                         |
| `PalCaptureRate`                           | 1.000000      | Pal捕获率                                           |
| `PalSpawnNumRate`                          | 1.000000      | Pal生成数量率                                        |
| `PalDamageRateAttack`                      | 1.000000      | Pal攻击伤害率                                       |
| `PalDamageRateDefense`                     | 1.000000      | Pal防御伤害率                                       |
| `PlayerDamageRateAttack`                   | 1.000000      | 玩家攻击伤害率                                       |
| `PlayerDamageRateDefense`                  | 1.000000      | 玩家防御伤害率                                       |
| `PlayerStomachDecreaceRate`                | 1.000000      | 玩家饥饿度下降率                                     |
| `PlayerStaminaDecreaceRate`                | 1.000000      | 玩家耐力下降率                                       |
| `PlayerAutoHPRegeneRate`                   | 1.000000      | 玩家自动生命恢复率                                   |
| `PlayerAutoHpRegeneRateInSleep`            | 1.000000      | 玩家睡眠中的自动生命恢复率                           |
| `PalStomachDecreaceRate`                   | 1.000000      | Pal饥饿度下降率                                      |
| `PalStaminaDecreaceRate`                   | 1.000000      | Pal耐力下降率                                        |
| `PalAutoHPRegeneRate`                      | 1.000000      | Pal自动生命恢复率                                    |
| `PalAutoHpRegeneRateInSleep`               | 1.000000      | Pal睡眠中的自动生命恢复率                            |
| `BuildObjectDamageRate`                    | 1.000000      | 建筑物损坏率                                         |
| `BuildObjectDeteriorationDamageRate`       | 1.000000      | 建筑物老化损坏率                                     |
| `CollectionDropRate`                       | 1.000000      | 收集掉落率                                           |
| `CollectionObjectHpRate`                   | 1.000000      | 收集物品耐久度率                                     |
| `CollectionObjectRespawnSpeedRate`         | 1.000000      | 收集物品刷新速率                                     |
| `EnemyDropItemRate`                        | 1.000000      | 敌人掉落物品率                                       |
| `DeathPenalty`                             | None          | 死亡惩罚                                             |
| `bEnablePlayerToPlayerDamage`              | False         | 是否允许玩家对玩家伤害                               |
| `bEnableFriendlyFire`                      | False         | 是否开启友军伤害                                     |
| `bEnableInvaderEnemy`                      | True          | 是否启用入侵敌人                                     |
| `bActiveUNKO`                              | False         | 激活UNKO (特定功能)                                 |
| `bEnableAimAssistPad`                      | True          | 是否开启手柄瞄准辅助                                 |
| `bEnableAimAssistKeyboard`                 | False         | 是否开启键盘鼠标瞄准辅助                             |
| `DropItemMaxNum`                           | 3000          | 最大掉落物品数量                                     |
| `DropItemMaxNum_UNKO`                      | 100           | UNKO最大掉落物品数量                                 |
| `BaseCampMaxNum`                           | 128           | 基地最大数量                                         |
| `BaseCampWorkerMaxNum`                     | 15            | 基地工人最大数量                                     |
| `DropItemAliveMaxHours`                    | 1.000000      | 掉落物品存活最大时间（小时）                          |
| `bAutoResetGuildNoOnlinePlayers`           | False         | 自动重置无在线玩家的公会                             |
| `AutoResetGuildTimeNoOnlinePlayers`        | 72.000000     | 无在线玩家公会自动重置时间（小时）                    |
| `GuildPlayerMaxNum`                        | 20            | 公会最大玩家数量                                     |
| `PalEggDefaultHatchingTime`                | 0.000000      | Pal蛋默认孵化时间                                    |
| `WorkSpeedRate`                            | 2.000000      | 工作速度率                                           |
| `bIsMultiplay`                             | False         | 是否为多人游戏                                       |
| `bIsPvP`                                   | False         | 是否为玩家对玩家（PvP）                              |
| `bCanPickupOtherGuildDeathPenaltyDrop`     | False         | 是否可以拾取其他公会死亡掉落物                        |
| `bEnableNonLoginPenalty`                   | True          | 是否启用未登录惩罚                                   |
| `bEnableFastTravel`                        | True          | 是否启用快速旅行                                     |
| `bIsStartLocationSelectByMap`              | True          | 是否通过地图选择起始位置                             |
| `bExistPlayerAfterLogout`                  | False         | 玩家登出后是否仍然存在                               |
| `bEnableDefenseOtherGuildPlayer`           | False         | 是否启用防御其他公会玩家                             |
| `CoopPlayerMaxNum`                         | 4             | 合作模式最大玩家数量                                 |
| `ServerPlayerMaxNum`                       | 32            | 服务器最大玩家数量                                   |
| `ServerName`                               | "Default Palworld" | 服务器名称                                 |

</center>  

### 2.3.管理员指令
**要使用控制台指令**，**请在游戏内输入`/adminpassword <Admin密码>`**，如下图：  
**注：管理员密码在后台“启动”分页，找 AdminPassword 值**  
<center>![连接服务器](/assets/palworld/enter_password.png)</center>
<center>**管理员登陆指令**</center>  

<center>![连接服务器](/assets/palworld/password_success.png)</center>
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
| 独立服务器，直接连接无法输入密码              | 已修复，加入前勾选密码    |
| 工会中玩家退出，会导致其他未退出玩家烂档     | 等待官方修复            |
| 独立服务器，无法在游戏列表显示服务器          | 等待官方修复            |
| 营地内的最大Pal数量上限设置无效              | 等待官方修复            |
| 无法调整Boss刷新时间，默认为1销售            | 等待官方更新            |
| 内存泄漏，游戏每隔一段时间会爆内存重启   | 部分修复，8G仍会爆       |
| 卡Bug抓高塔Boss可能导致后期烂档              | 未确认是否为真          |
| 使用近期连接过的列表加入，会提示创建角色 | 请用地址直接连接          |
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
<br>
