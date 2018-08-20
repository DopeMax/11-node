# 第一个服务程序 http
## 01.http模块初步使用
```
const http=require('http');
var server= http.createServer(function(req,res){
    console.log('服务器被访问了');
    switch(req.url){
        case '/1.html':
            res.write("11111");
            break;
        case '/2.html':
            res.write("2222");
            break;
        default:
            res.write("404");
            break;

    }
    //res.write("abc");
    res.end();
});
server.listen(8000);
//访问 http://localhost:8000/
```
打开浏览器访问 http://localhost:8000/，后台会出现结果。
## 02.http模块之fs文件操作
文件操作：fs--File System

同步vs异步

```
readFile(文件名,function(err,data){});
writeFile(文件名,内容,function(err,data){});
```

## 03.http模块之数据解析
1. get

2. post


## 04.建议httpServer搭建

