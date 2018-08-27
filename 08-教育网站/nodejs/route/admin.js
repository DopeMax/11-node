const express = require('express');
const common = require('../libs/common');
module.exports = function () {
    var router = express.Router();

    //检查登录状态
    router.get((req, res, next) => {
        if (!req.session['admin_id'] && req.url != '/login') { //没有登录
            res.redirect('/admin/login');
        } else {
            next();
        }
    });

    router.get('/login', (req, res) => {
        res.render('admin/login.ejs', {});
    });
    return router;
};