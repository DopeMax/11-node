// const crypto = require('crypto');
// var obj = crypto.createHash('md5');
// obj.update('123456');
// var str = obj.digest('hex');
// console.log(str);

const common = require('./libs/common');
var str = common.md5(common.md5(common.md5('123456')));
var str2 = common.md5('123456' + common.MD5_SUFFIX);
console.log(str);
console.log(str2);