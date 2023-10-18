# 反恐精英（Counter-Strike）
一款经典的第一人称射击游戏，现在CS:GO死了，CS2来啦！

---

## 1.推荐配置

**CSGO / CS2都需要最少40G的硬盘，因为需要下载整个游戏。**  
**推荐配置2C4G起跳，一般就足够使用了，当然奢侈一点6G会很不错。**  
<br>

## 2.开服教程
**重要的服务器配置步骤**

### 2.1.生成服务器令牌
生成服务器令牌，用于玩家身份识别 → [Manage Game Servers](https://steamcommunity.com/dev/managegameservers)
![PassKEY](/assets/cs/Pass.png)

### 2.2.生成WAPI的密钥
生成API的密钥，用于抓取创意工坊等内容 → [Steam API Key](https://steamcommunity.com/dev/apikey)
![API-KEY](/assets/cs/API.png)

### 2.3.选择对应的地图
可以从原生地图里面选，地图文件夹`/home/container/game/csgo/maps`  
![地图文件夹](/assets/cs/maps.png)

### 2.4.选择创意工坊
将以下两项设置为对应的创意工坊：  
**HOST WORKSHOP COLLECTION ID**  
**WORKSHOP START MAP** (Workshop ID)   
如果要多MOD，请创建Mod合集然后把Mod合集填入Collection ID  
` 注：（CS2暂不可用创意工坊内容）`
![Workshop ID](/assets/cs/workshop.png)

### 2.5.设置游戏模式
请根据 [CSGO游戏模式](https://developer.valvesoftware.com/wiki/Counter-Strike:_Global_Offensive/Game_Modes) / [CS2游戏模式](https://developer.valvesoftware.com/wiki/Counter-Strike_2/Dedicated_Servers) 设置正确的游戏模式


### 2.6.启动创意工坊
服务器开机后，在后台输入以下命令：  
`host_workshop_map xxxxxxxxxxx`  
`host_workshop_collection xxxxxxxxxxx`  
务必进行此步，否则无法连接到服务器。  
` 注：（CS2暂不可用创意工坊内容）`
![Collection ID](/assets/cs/collection.png)

### 2.7.连接游戏服务器
在游戏Console里输入：  
`connect 服务器地址:端口`  
<br>

## 3.注意事项

一些通用的注意事项，强烈建议阅读  

### 3.1.已知BUG

- 部分指令，服务器正确运行后才会有效果，一旦改变地图或重启，需要重新输入
- 创意工坊地图，不手动运行指令`host_workshop_map xxxxxxxxxxx`，不会自动下载地图  
<br>

## 4.教程链接

- [服务器指令](https://totalcsgo.com/commands)
- [游戏模式列表](https://developer.valvesoftware.com/wiki/Counter-Strike:_Global_Offensive/Game_Modes)
- [设置创意工坊](https://shockbyte.com/billing/knowledgebase/357/How-to-add-CSGO-Workshop-Maps-to-your-Server.html#:~:text=How%20to%20Add%20CS%3AGO%20Workshop%20Maps%20to%20Your,...%205%20Using%20Collections%20on%20your%20Server%20)
- [比赛观战HUD设置](https://www.bilibili.com/video/BV1tZ4y1g7wX/)


