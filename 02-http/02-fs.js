const fs=require('fs');

fs.readFile('aaa.txt',function(err,data){
    if (err) {
        console.log('遇到错误');
    } else {
        console.log('');
    }
});
