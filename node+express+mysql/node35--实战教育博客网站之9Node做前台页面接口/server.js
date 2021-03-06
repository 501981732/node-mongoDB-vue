const express = require('express')
// const static = require('express-static')
// const route = require('express-route')
const sql = require('sql')
const cookieParser = require('cookie-parser')
const cookieSession = require('cookie-session')
const consolidate = require('consolidate')
const multer = require('multer')
const bodyParser = require('body-parser')


var app = express()

app.listen(8080)

// ----------------------------1.请求数据--------------------------------
    //get自带 
    // post                                            //req.query
    // 解析文件数据
    app.use(multer({dest:'./static/upload/'}).any())      //req.files

    // 解析post普通数据
    app.use(bodyParser.urlencoded({extended: false}))  //req.body

//---------------------------2.session cookie-----------------------------

    // 处理cookie                                      //req.cookies    未签名 //req.signedCookies  签名
    app.use(cookieParser())

    let keys = []
    for(var i=0;i<100000;i++) {
        keys[i] = 'sess_' + Math.random()
    }
    app.use(cookieSession({
        name: 'sess_id',
        keys: keys,
        maxAge: 20*60*1000
    }))                                                //req.session

// ------------------------------3.模板-----------------------------------

app.engine('html',consolidate.ejs)
app.set('views','template')
app.set('view engine','html')

// -----------------------------4.route--------------------------------------
// catch 404 and forward to error handler
// app.use(function (req, res, next) {
//     var err = new Error('Not Found');
//     err.status = 404;
//     next(err);
// })
// router路由模块写法
    // 前端接口部分
app.use('/',require('./route/web'))
    // 后台数据部分
// app.use('/admin',require('./route/admin/index.js'))
app.use('/admin',require('./route/admin'))
//--------------------------5.static静态文件----------------------------------------

app.use(express.static('./static/'))