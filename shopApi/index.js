var express = require('express');
var app = express();
var bodyParser = require('body-parser');
app.use('/public', express.static('public'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
//设置跨域访问
app.all('*', function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "X-Requested-With");
    res.header("Access-Control-Allow-Methods", "PUT,POST,GET,DELETE,OPTIONS");
    res.header("X-Powered-By", ' 3.2.1');
    res.header("Content-Type", "application/json;charset=utf-8");
    next();
});
const mysql = require('mysql');

// 连接mysql
const connection = mysql.createConnection({
    host: '127.0.0.1',
    user: 'root',
    password: 'root',
    port: '3306',
    database: 'customshop',
    charset: 'UTF8_GENERAL_CI'
});

connection.connect();

function promiseAjaxData(sql, arr) {
    return new Promise((resolved, rejected) => {
        let query = connection.query(sql, arr, function(error, results, fields) {
            if (error) throw error;
            resolved(results);
        })
    });
}

//登录
app.post('/loginUser', function(req, res) {
    let userdata = [req.body.username, req.body.userpwd]
    console.log(userdata)
    let query = connection.query("select * from m_user where username = ? and userpwd = ?", userdata, function(error, results, fields) {
        if (error) throw error;
        res.json(results)
    })
})

//更改密码
app.post('/findpassword', function(req, res) {
    let userdata = [req.body.userpwd, req.body.username]
    let query = connection.query("update m_user set userpwd = ? where  username = ?", userdata, function(error, results, fields) {
        if (error) throw error;
        res.json(results)
    })
})


//注册
app.post('/regUser', function(req, res) {
    let usernamearr = [req.body.username]
    let usernamesql = "select username from m_user where username = ?;"
    promiseAjaxData(usernamesql, usernamearr).then(childres => {
        console.log(childres)
        if (childres.length != 0) {
            res.json('2')
        } else {
            let userdata = [req.body.username, req.body.nickname,
                req.body.userpwd
            ]
            console.log(userdata)
            let query = connection.query("INSERT INTO `m_user` ( `username` , `nickname`, `userpwd` ) VALUES (?,?,?)", userdata, function(error, results, fields) {
                if (error) throw error;
                res.json('1')
            })
        }
    })
})

//添加收藏
app.post('/addlove', function(req, res) {
    let usernamearr = [req.body.userid, req.body.goodsid, req.body.goodsname, req.body.imgurl, req.body.goodsprice]
    let query = connection.query("INSERT INTO `collect` ( `userid` , `goodsid`,`goodsname`,`imgurl`,`goodsprice`) VALUES (?,?,?,?,?)", usernamearr, function(error, results, fields) {
        if (error) throw error;
        res.json('1')
    })
})

//取消收藏
app.post('/cancelLove', function(req, res) {
    let usernamearr = [req.body.userid, req.body.goodsid]
    let query = connection.query("delete from collect where userid =? and goodsid =?", usernamearr, function(error, results, fields) {
        if (error) throw error;
        res.json('1')
    })
})

//查看我的收藏列表
app.post('/findmylove', function(req, res) {
    let usernamearr = [req.body.userid]
    let query = connection.query("select * from collect where userid = ? ", usernamearr, function(error, results, fields) {
        if (error) throw error;
        res.json(results)
    })
})

//通过userid获取购物车内容
app.post('/getCartByid', function(req, res) {
    let userdata = [req.body.uersid]
    let sql1 = "select * from shopcart where uersid = ? "
    let query = connection.query("select * from shopcart where uersid = ? ", userdata, function(error, results, fields) {
        if (error) throw error;
        res.json(results)
    })
})

//添加到购物车
app.post('/addCart', function(req, res) {
    let userdata = [req.body.uersid, req.body.goodsid, req.body.goodsname, req.body.goodsnumber, req.body.goodsintroduce, req.body.imgurl, req.body.goodsprice]
    let sql1 = "select * from shopcart where uersid = ? and goodsid = ?"
    let userdata1 = [req.body.uersid, req.body.goodsid]
    promiseAjaxData(sql1, userdata1).then(childres => {
        if (childres.length == 0) {
            connection.query("INSERT INTO shopcart(uersid,goodsid,goodsname,goodsnumber,goodsintroduce,imgurl,goodsprice)  values (?,?,?,?,?,?,?)", userdata, function(error, results, fields) {
                if (error) throw error;
                res.json('1')
            })
        } else {
            let number = parseInt(childres[0].goodsnumber)
            number++
            let userdata2 = [req.body.uersid, req.body.goodsid, req.body.goodsname, number, req.body.goodsintroduce, req.body.imgurl, req.body.goodsprice, childres[0].shopcartid]
            connection.query("update shopcart set uersid=?, goodsid=?, goodsname=?,goodsnumber=?,goodsintroduce=?,imgurl=? ,goodsprice=? where shopcartid =?", userdata2, function(error, results, fields) {
                if (error) throw error;
                res.json('1')
            })
        }
    })
})

//删除某个购物车
app.post('/updateCart', function(req, res) {
    let userdata = [req.body.uersid, req.body.goodsid, req.body.goodsname, req.body.goodsnumber, req.body.goodsintroduce, req.body.imgurl, req.body.goodsprice, req.body.shopcartid]
    console.log(userdata)
    connection.query("update shopcart set uersid=?, goodsid=?, goodsname=?,goodsnumber=?,goodsintroduce=?,imgurl=? ,goodsprice=? where shopcartid =?", userdata, function(error, results, fields) {
        if (error) throw error;
        res.json('1')
    })
})

//修改购物车
app.post('/updateCart', function(req, res) {
    let userdata = [req.body.uersid, req.body.goodsid, req.body.goodsname, req.body.goodsnumber, req.body.goodsintroduce, req.body.imgurl, req.body.goodsprice, req.body.shopcartid]
    console.log(userdata)
    let query = connection.query("update shopcart set uersid=?, goodsid=?, goodsname=?,goodsnumber=?,goodsintroduce=?,imgurl=? ,goodsprice=? where shopcartid =?", userdata, function(error, results, fields) {
        if (error) throw error;
        res.json('1')
    })
})

//修改购物车数量
app.post('/updateCartNum', function(req, res) {
    let userdata = [req.body.goodsnumber, req.body.uersid, req.body.goodsid]
    console.log(userdata)
    let query = connection.query("update shopcart set goodsnumber=? where uersid =? and goodsid = ?", userdata, function(error, results, fields) {
        if (error) throw error;
        res.json('1')
    })
})


//删除购物车
app.post('/delCart', function(req, res) {
    let userdata = [req.body.shopcartid]
    let query = connection.query("delete from shopcart where shopcartid =?", userdata, function(error, results, fields) {
        if (error) throw error;
        res.json('删除成功')
    })

})



//获得用户信息
app.post('/getUser', function(req, res) {
    let query = connection.query("Select * from m_user", function(error, results, fields) {
        if (error) throw error;
        res.json(results)
    })
})


//获得所有商品信息
app.post('/getGoods', function(req, res) {
    let query = connection.query("select * from goods", function(error, results, fields) {
        if (error) throw error;
        res.json(results)
    })
})

app.post('/getGoodsByType', function(req, res) {
    let userdata = [req.body.type]
    connection.query("select * from goods where type = ?", userdata, function(error, results, fields) {
        if (error) throw error;
        res.json(results)
    })
})

app.post('/getGoodsByid', function(req, res) {
    let userdata = [req.body.id]
    connection.query("select * from goods where id = ?", userdata, function(error, results, fields) {
        if (error) throw error;
        res.json(results)
    })
})

//获得所有banner图
app.post('/goodBanners', function(req, res) {
    connection.query("select * from banner", [], function(error, results, fields) {
        if (error) throw error;
        res.json(results)
    })
})

//获得文章
app.post('/getarticle', function(req, res) {
    connection.query("select * from article", [], function(error, results, fields) {
        if (error) throw error;
        res.json(results)
    })
})

//获得用户地址
app.post('/getAddress', function(req, res) {
    let userdata = [req.body.userid]
    let query = connection.query("select * from useradrress where userid = ?", userdata, function(error, results, fields) {
        if (error) throw error;
        res.json(results)
    })
})

//通过id获得用户地址
app.post('/getAddressbyid', function(req, res) {
    let userdata = [req.body.id]
    let query = connection.query("select * from useradrress where id = ?", userdata, function(error, results, fields) {
        if (error) throw error;
        res.json(results)
    })
})

//插入地址
app.post('/addAddress', function(req, res) {
    //jieshouname,jieshouaddress,jieshoutel,userid,status
    let userdata = [req.body.jieshouname, req.body.jieshouaddress, req.body.jieshoutel, req.body.userid, req.body.status]
    let query = connection.query("insert into useradrress(jieshouname,jieshouaddress,jieshoutel,userid,status) values(?,?,?,?,?)", userdata, function(error, results, fields) {
        if (error) throw error;
        res.json("1")
    })
})

//修改地址
app.post('/updateAddress', function(req, res) {
    let userdata = [req.body.jieshouname, req.body.jieshouaddress, req.body.jieshoutel, req.body.status, req.body.id]
    let query = connection.query("update useradrress set jieshouname=?, jieshouaddress=?, jieshoutel=?,status=? where Id =?", userdata, function(error, results, fields) {
        if (error) throw error;
        res.json("1")
    })
})

//修改商品信息
app.post('/updateGoods', function(req, res) {
        //id,name,posterurl,type,score,actor,screen,isshow,wish,playinfo
        let userdata = [req.body.name, req.body.posterurl, req.body.type, req.body.score, req.body.actor, req.body.screen, req.body.isshow, req.body.wish, req.body.playinfo, req.body.imgurl, req.body.id]
        let query = connection.query("UPDATE goods set name = ?, posterurl = ?, type =?, score =?, actor =?, screen =?, isshow = ?, wish = ?, playinfo = ?,imgurl = ? where id =?", userdata, function(error, results, fields) {
            if (error) throw error;
            res.json("1")
        })
    })
    //通过name获得商品
app.post('/queryGoodsByName', function(req, res) {
    console.log(req.query)
    let sql = ""
    sql += "select * from goods where name like '%" + req.body.name + "%'";
    let userdata = [req.body.name]
    console.log(sql, userdata)
    let query = connection.query(sql, [], function(error, results, fields) {
        if (error) throw error;
        res.json(results)
    })
})

//通过name获得商品
app.post('/queryUserAdmin', function(req, res) {
    console.log(req.query.username)
    let sql = ""
    sql += "select * from m_user where username like '%" + req.body.username + "%'";
    let query = connection.query(sql, [], function(error, results, fields) {
        if (error) throw error;
        res.json(results)
    })
})

//通过id获得商品
app.post('/queryGoodsDetail', function(req, res) {
    let userdata = [req.body.id]
    let query = connection.query("select * from goods where id =  ?", userdata, function(error, results, fields) {
        if (error) throw error;
        res.json(results)
    })
})

//通过goodsid获得评论
app.post('/queryCommentByGoodsId', function(req, res) {
    let userdata = [req.body.goodsid]
    let query = connection.query("select * from comment where goodsid =  ?", userdata, function(error, results, fields) {
        if (error) throw error;
        res.json(results)
    })
})


//add评论
app.post('/addComent', function(req, res) {
    let userdata = [req.body.username, req.body.content, req.body.creattime, req.body.goodsid, req.body.info]
    let query = connection.query("insert into comment(username,content,creattime,goodsid,info) values(?,?,?,?,?)", userdata, function(error, results, fields) {
        if (error) throw error;
        res.json(results)
    })
})

//添加订单
app.post('/addOrder', function(req, res) {
    // let userdata = [req.body.actor,req.body.id,req.body.isshow,req.body.name,req.body.playinfo,req.body.posterurl,
    //req.body.score,req.body.screen,req.body.type,req.body.wish]
    let goods = req.body.jsonparm
    let uuid1 = uuid().substring(0, 16)
    let idstr = ""
    let total = 0
    console.log(goods[0], typeof goods, uuid1)
    for (let i = 0; i < goods.length; i++) {
        let item = goods[i]
        let score = parseInt(item.score);
        let screen = parseInt(item.screen);
        idstr += item.id + ","
        total += score * screen;
    }
    let creattime = getNowFormatDate()
    console.log(idstr, total, getNowFormatDate())
    let sql = "INSERT INTO `customshop`.`order` (`id`, `ordernumber`, `total`, `type`, `goodsid`, `creattime`, `info`) VALUES(?,?,?,?,?,?,?)"
    let userdata = [uuid().substring(0, 16), uuid1, total, 1, idstr, creattime, goods[0].wish]
    let resObj = {
        id: uuid().substring(0, 16),
        ordernumber: uuid1,
        total: total,
        type: 1,
        goodsid: idstr,
        creattime: creattime,
        info: goods[0].wish,
        newOrderDetatil: []
    }
    promiseAjaxData(sql, userdata).then(response => {
        for (let i = 0; i < goods.length; i++) {
            let item = goods[i]
            let childsql = "INSERT INTO `customshop`.`orderdetail` (`ordernumber`, `number`, `goodsid`, `screen`, `score`, `posterurl`, `name`) VALUES(?,?,?,?,?,?,?)"
            let childarr = [uuid1, parseInt(item.screen), item.id, parseInt(item.screen), parseInt(item.score), item.posterurl, item.name]
            let detial = {
                ordernumber: uuid1,
                number: parseInt(item.screen),
                goodsid: item.id,
                screen: parseInt(item.screen),
                score: parseInt(item.score),
                posterurl: item.posterurl,
                name: item.name
            }
            promiseAjaxData(childsql, childarr).then(childres => {
                resObj.newOrderDetatil.push(detial)
                if (i == goods.length - 1) {
                    console.log(resObj)
                    res.json(resObj)
                }
            })
        }
    })
})

//通过用户名查看菜单
app.post('/queryOrderByName', function(req, resvalue) {
    let userdata = [req.body.username]
    console.log(userdata)
    let sql = "SELECT * FROM `order` WHERE info = ? order by creattime desc"
    promiseAjaxData(sql, userdata).then(res => {
        let obj = res
        let arrobj = []
        for (let number = 0; number < res.length; number++) {
            let childrenlist = obj[number]
            childrenlist.orderDetail = []
            let splitarr = childrenlist.goodsid.split(",")
            for (let i = 0; i < splitarr.length - 1; i++) {
                let childsql = "SELECT * FROM `orderdetail` WHERE goodsid = ?"
                let childarr = [parseInt(splitarr[i])]
                promiseAjaxData(childsql, childarr).then(childres => {
                    childrenlist.orderDetail.push(childres[0])
                    if (i == splitarr.length - 2) {
                        arrobj.push(childrenlist)
                        if (number == res.length - 1) {
                            console.log(arrobj)
                            resvalue.json(arrobj)
                        }
                    }

                })
            }

        }
    })
})

//改变订单类型
app.post('/changeOrderType', function(req, res) {
    let userdata = [req.body.type, req.body.id]
    let query = connection.query("UPDATE `customshop`.`order` SET `type`= ? WHERE `id`= ?", userdata, function(error, results, fields) {
        if (error) throw error;
        res.json("1")
    })
})

//修改用户信息
app.post('/updateUser', function(req, res) {
    let userdata = [req.body.userName, req.body.userPwd, req.body.userEmail, req.body.userTel, req.body.id]
    console.log(userdata)
    let query = connection.query("update user set userName=?,userPwd=?,userEmail=?,userTel=? where id=?", userdata, function(error, results, fields) {
        if (error) throw error;
        res.json("1")
    })
})

//add信息
app.post('/addGoods', function(req, res) {
    let userdata = [req.body.name, req.body.posterurl, req.body.type, req.body.score, req.body.actor, req.body.screen, req.body.isshow, req.body.wish, req.body.playinfo, req.body.imgurl]
    let query = connection.query("insert into goods(name,posterurl,type,score,actor,screen,isshow,wish,playinfo,imgurl) values(?,?,?,?,?,?,?,?,?,?)", userdata, function(error, results, fields) {
        if (error) throw error;
        res.json("1")
    })
})

//删除信息
app.post('/delGoods', function(req, res) {
    let userdata = [req.body.id]
    console.log(userdata)
    let query = connection.query("delete from goods where id=?", userdata, function(error, results, fields) {
        if (error) throw error;
        res.json("1")
    })
})

//删除m用户信息
app.post('/delmUser', function(req, res) {
    let userdata = [req.body.id]
    console.log(userdata)
    let query = connection.query("delete from m_user where id=?", userdata, function(error, results, fields) {
        if (error) throw error;
        res.json("1")
    })
})

//删除订单
app.post('/delOrder', function(req, res) {
    let userdata = [req.body.id]
    console.log(userdata)
    let query = connection.query("delete from customshop.order where id=?", userdata, function(error, results, fields) {
        if (error) throw error;
        res.json("1")
    })
})

//删除用户信息
app.post('/delUser', function(req, res) {
    let userdata = [req.body.Id]
    console.log(userdata)
    let query = connection.query("delete from user where Id=?", userdata, function(error, results, fields) {
        if (error) throw error;
        res.json("1")
    })
})

//通过id获得商品
app.post('/getGoodsById', function(req, res) {
    let userdata = [req.body.id]
    let query = connection.query("select * from goods where id =  ?", userdata, function(error, results, fields) {
        if (error) throw error;
        res.json(results)
    })
})


//插入用户地址
app.post('/updataAddressById', function(req, res) {
    let userdata = [req.body.userid, req.body.userName, req.body.address, req.body.contact, req.body.usertel]
    console.log(userdata)
    connection.query("delete from userinfo where userid = ?", [req.body.Id], function(error, results, fields) {
            if (error) throw error;
            res.json("1")
        })
        // let query = connection.query("insert into userinfo values(userid,userName,address,contact,usertel) values(?,?,?,?,?)",userdata, function (error, results, fields) {
        //     if (error) throw error;
        //     res.json("1")
        // })
})

//查询用户地址
app.post('/getAddressById', function(req, res) {
    let userdata = [req.body.userid]
    let query = connection.query("select * from userinfo where userid =  ?", userdata, function(error, results, fields) {
        if (error) throw error;
        res.json(results)
    })
})

app.post('/getGoodsByprice', function(req, res) {
    let query = connection.query("select * from goods ORDER BY price ", function(error, results, fields) {
        if (error) throw error;
        res.json(results)
    })
})



function getNowFormatDate() {
    var date = new Date();
    var seperator1 = "-";
    var year = date.getFullYear();
    var month = date.getMonth() + 1;
    var strDate = date.getDate();
    if (month >= 1 && month <= 9) {
        month = "0" + month;
    }
    if (strDate >= 0 && strDate <= 9) {
        strDate = "0" + strDate;
    }
    var currentdate = year + seperator1 + month + seperator1 + strDate;
    return currentdate;
}

function getNowFormatDate() {
    var date = new Date();
    var seperator1 = "-";
    var seperator2 = ":";
    var month = date.getMonth() + 1;

    var strDate = date.getDate();
    if (month >= 1 && month <= 9) {
        month = "0" + month;
    }
    if (strDate >= 0 && strDate <= 9) {
        strDate = "0" + strDate;
    }

    var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate +
        " " + date.getHours() + seperator2 + date.getMinutes();
    return currentdate;
}


function uuid() {
    var s = [];
    var hexDigits = "0123456789";
    for (var i = 0; i < 36; i++) {
        s[i] = hexDigits.substr(Math.floor(Math.random() * 0x10), 1);
    }
    s[14] = "4"; // bits 12-15 of the time_hi_and_version field to 0010
    s[19] = hexDigits.substr((s[19] & 0x3) | 0x8, 1); // bits 6-7 of the clock_seq_hi_and_reserved to 01
    var uuid = s.join("");
    return uuid;
}

//删除购物车
app.post('/delcart', function(req, res) {
    let userdata = [req.body.Id]
    console.log(userdata)
    let query = connection.query("delete  from shopcart where Id = ?", userdata, function(error, results, fields) {
        if (error) throw error;
        res.json("1")
    })
})

//查看订单
app.post('/querymyOrder', function(req, res) {
    let userdata = [req.body.username]
    let query = connection.query("select * from customshop.order where info = ?", userdata, function(error, results, fields) {
        if (error) throw error;
        res.json(results)
    })
})

//查看订单
app.post('/getallOrder2', function(req, res) {
    let query = connection.query("SELECT * FROM `order`", [], function(error, results, fields) {
        if (error) throw error;
        res.json(results)
    })
})

//配置服务端口
var server = app.listen(3001, function() {
    var host = server.address().address;
    var port = server.address().port;
    console.log('Example app listening at http://%s:%s', host, port);
})