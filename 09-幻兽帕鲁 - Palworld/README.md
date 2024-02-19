PalWorld

## 使用.pteroignore文件 只备份游戏存档
要使用.pteroignore来实现快速热备存档，添加以下代码到安装脚本内，重装服务器便会自动下载该文件。

```
# Check if the .pteroignore file exists before downloading
if [ ! -f "/mnt/server/.pteroignore" ]; then
    echo "Downloading the .pteroignore file..."
    curl -sSL -o /mnt/server/.pteroignore https://raw.githubusercontent.com/Mr-Leaves-Server-Group/Manual/deploy/9-%E5%B9%BB%E5%85%BD%E5%B8%95%E9%B2%81%20-%20Palworld/.pteroignore
    echo ".pteroignore file downloaded."
else
    echo ".pteroignore file already exists. Skipping download."
fi
```

最后只需要在服务器的计划面板添加备份任务即可。

## 直接使用.pteroignore 文本，创建任务
您也可以直接在创建备份任务，或者备份的时候，在跳过文件列表输入.pteroignore的内容，以单次使用ignor文件。