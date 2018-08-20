const http=require('http');
var server= http.createServer(function(){
    console.log('服务器被访问了');
});
server.listen(8000);