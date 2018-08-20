const http=require('http');
var server= http.createServer(function(){
    console.log('服务器创建了');
});
server.listen(8000);