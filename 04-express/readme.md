# express框架
## 步骤
1. 创建服务

var server=express();
2. 监听

server.listen(8080);
3. 处理请求

server.use('地址', function (req, res){
});

## 中间件使用举例
1. express-static
> cnpm install express-static

```
const express=require('express');
const expressStatic=require('express-static');

var server=express();
server.listen(8080);

server.use(expressStatic('./www'));

```