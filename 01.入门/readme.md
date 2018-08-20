# 第一个程序
```
const http=require('http');
var server= http.createServer(function(req,res){
    console.log('服务器被访问了');
    res.write("abc");
    res.end();
});
server.listen(8000);
//访问 http://localhost:8000/
```
打开浏览器访问 http://localhost:8000/，后台会出现结果。