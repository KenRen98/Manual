# Steam公开检查
使用CURL指令，来检查服务器是否正常在Steam服务器网络中注册。

---

## 1.使用在线CURL

您可以在**[免费在线CURL](https://reqbin.com/curl)**使用CURL工具  
当然，您也可以在本地主机CMD或者Terminal里面直接使用CURL指令来实现  
<br>

## 2.确认服务器IP
注：对于动态IP地址的域名，请先使用**[DNS-Checker](https://dnschecker.org/)**得到对应的IP地址后再测试  
在**控制台**页面找右上角的**服务器地址**，点击就可以拷贝服务器的地址  
<br>

## 3.修改标准指令

将<IP_ADDRESS\>替换为您的IP地址即可（不要加端口号）  
```
curl http://api.steampowered.com/ISteamApps/GetServersAtAddress/v0001/?format=json&addr=<IP_ADDRESS>
```  
<br>



## 4.检查返回结果
示例：https://dnschecker.org/#A/mr.Leaves.com  
**得到IP地址为：**
70.53.35.55  

curl http://api.steampowered.com/ISteamApps/GetServersAtAddress/v0001/?format=json&addr=70.53.35.55  
**得到的回复为：**
```
{
    "response": {
        "success": true,
        "servers": [{
            "addr": "70.53.35.55:28017",
            "gmsindex": -1,
            "steamid": "90175581795724292",
            "appid": 252490,
            "gamedir": "rust",
            "region": -1,
            "secure": true,
            "lan": false,
            "gameport": 28015,
            "specport": 0
        }]
    }
}
```


以上例子为一个成功挂入Steam服务器网络的 Rust 服务器  
**部分游戏不一定在Steam上注册服务器**  
如：饥荒（只有玩家共享会注册），僵毁（默认不注册，可开启），泰拉瑞亚（完全不注册）,等