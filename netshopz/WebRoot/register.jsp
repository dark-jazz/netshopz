<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>注册</title>
    <style>
        * {
            padding: 0px;
            margin: 0px;
        }

        .header {
            width: 100%;
            height: 110px;
            color: #666;
            border-bottom: 1px solid rgba(69, 36, 13, 0.48);
            box-shadow: 2px 2px 2px #888888;
        }

        .container {
            width: 1210px;
            height: 76px;
            margin: 0px auto;
        }

        .left {
            float: left;

        }

        .left p {
            float: left;
            height: 34px;
            line-height: 34px;
            font-size: 24px;
            color: #333;
            padding-left: 20px;
            margin-top: 34px;
        }

        .left img {
            width: 160px;
            height: 50px;
            float: left;
            margin-top: 24px;
        }

        .right {
            float: right;

        }

        .right p {
            font-size: 16px;
            float: right;
            margin-top: 55px;
            color: #999;
        }

        .right a {
            text-decoration: none;
            color: #333;
            font-size: 16px;
        }

        .outer {
            width: 100%;
            color: #666;
        }

        .main {
            width: 830px;
            height: 605px;
            margin: 50px auto 60px;
        }

        .left2 .input {
            list-style: none;
            position: relative;
            border: solid 1px #ddd;
            width: 398px;
            height: 52px;

        }

        .left2 {
            float: left;
            width: 400px;
        }

        .left2 .input-tip {
            width: 400px;
            color: #c5c5c5;
            height: 27px;
            font-size: 12px;
            padding-top: 5px;
            display: none;
        }

        .outer3 {
            width: 400px;
            color: #c5c5c5;
            height: 27px;
            font-size: 12px;
            padding-top: 5px;
        }

        .left2 .input-tip span {
            color: #c5c5c5;
            font-size: 12px;
        }

        .left2 .input label {
            float: left;
            width: 90px;
            height: 52px;
            line-height: 52px;
            padding-left: 20px;
        }

        .form input {
            position: absolute;
            border: none;
            border: 0 none;
            font-size: 14px;
            width: 190px;
            height: 19px;
            padding-bottom: 11px;
            padding-left: 20px;
            padding-top: 16px;
            outline: none;
        }


        #box{
            border: none;
            position: absolute;
            right: 3px;
            top: 3px;
            float: left;
            width: 110px;
            height: 46px;
            background-color: #e6d6c6;
            font-size: 30px;
            font-weight: bold;
            line-height: 40px;
            text-align: center;
            font-family: DFKai-SB;

        }


        .box1{
            position: absolute;
            right: 3px;
            top: 3px;
            width: 110px;
            height: 46px;
            border: none;
            background: #f2f2f2;
            color: #333;
            padding: 0;
            z-index: 5;
            text-align: center;
            line-height: 46px;

        }

        .submit {
            width: 400px;
            height: 60px;

        }
        .submit .button2 {
            width: 400px;
            height: 60px;
            text-align: center;
            margin-top: 30px;
            font-size: 16px;
            color: #fff;
            background: #e22;

        }

        .right2 {
            float: left;
            margin-left: 100px;
            height: 605px;
            padding-left: 90px;
            border-left: solid 1px #e6e6e6;

        }
        
        #www{
        display:none;
        }
        




    </style>


</head>
<body>
<div class="header">
    <div class="container">

        <div class="left">
            <a href="./index.jsp"> <img src="./photo/logo.png" alt="图片加载失败"></a>
            <p> 欢迎注册</p>
        </div>

        <div class="right">
            <p> 已有账号？<a href="./enter.jsp">登录</a></p>

        </div>

    </div>
</div>

<div class="outer">
    <div class="main">

        <div class="left2">
            <form action="do_register" class="form" method="get" id="form1">
                <div id=www style="display:<%out.print(request.getAttribute("msg1"));%>"><% 
out.print(request.getAttribute("msg"));
%>
 </div> 
                <div class="input">
                
                    <label>用　户　名</label>
                    

                    <input id="username" type="text" placeholder="你的账户名和登录名" name="userName">
                </div>

                <div class="outer3">
                    <div class="input-tip" id="tip1"><span>支持中文、字母、数字、“-”“_”的组合，4-20个字符                 </span></div>
                </div>


                <div class="input">
                    <label>设置密码</label>

                    <input id="password" type="password" placeholder="建议至少使用两种字符组合" name="password">
                </div>

                <div class="outer3">
                    <div class="input-tip" id="tip2"><span>建议使用字母、数字和符号两种及以上的组合，              6-20个字符 </span></div>
                </div>


                <div class="input">
                    <label>确认密码</label>

                    <input id="password2" type="password" placeholder="请再次输入密码" name="name">


                </div>
                <div class="outer3">
                    <div class="input-tip" id="tip3"><span>请再次输入密码</span></div>
                </div>


                <div class="input">
                    <label>中国 +86</label>

                    <input id="phone" type="text" placeholder="建议使用常用手机" name="tel">


                </div>
                <div class="outer3">
                    <div class="input-tip" id="tip4"><span>完成验证后，你可以用该手机登录和找回密码</span></div>
                </div>
                <div class="input">
                    <label>验证码</label>

                    <input id="authCode" type="text" placeholder="请输入验证码" name="code">


                    <div>
                        <div  id="box">验证码</div>
                    </div>
                </div>
                <div class="outer3">
                    <div class="input-tip" id="tip5"><span>看不清？点击图片更换验证码</span></div>
                </div>
                <div class="input">

                    <label>手机验证码</label>

                    <input id="phoneCode" type="text" placeholder="请输入手机验证码" name="phoneCode">

                    <div class="box1"> <span style="padding-top: 20px">获取验证码</span> </div>
                </div>

                <div class="submit">
                    <button TYPE="button" class="button2" onclick="this.form.submit()">立即注册</button>
                </div>     
            </form>
        </div>
        <div class="right2">
            <div><img src="./photo/2.png" alt=""></div>
        </div>
    </div>

</div>

<script src="../jquery1.11.1.min.js"></script>

<script>

    function getById(id) {
        return document.getElementById(id);
    }

    /*获取对象*/
    var  username= getById("username");
    var password=getById("password");
    var password2=getById("password2");
    var authCode=getById("authCode");
    var phone=getById("phone");
    var phoneCode=getById("phoneCode");
    var submit=getById("submit");
    var submit2=getById("submit2");

    /*小提示*/
    var tip1 =getById("tip1");
    var tip2 = getById("tip2");
    var tip3=getById("tip3");
    var tip4=getById("tip4");
    var tip5=getById("tip5");



   /* 用户名验证*/
    username.onclick = function () {
        tip1.style.display = "block";
        username.placeholder=" ";

    }
    username.onblur = function () {
        tip1.style.display = "none";  //离开焦点，块状内容不显示
        username.placeholder="你的账户名和登录名";
        var val =username.value;
        var reg = /^[\w -]{4,20}$/;
        if(val&&!reg.test(val)){
            alert('用户名格式错误！');
        }
    }

    /*初次输入密码格式验证*/
    password.onfocus = function () {
        tip2.style.display = "block";
        password.placeholder ="";

    }
    password.onblur = function () {
        tip2.style.display = "none";
        password.placeholder = "建议至少使用两种字符组合";
        var val = password.value;
        var reg = /^[\w -]{6,20}$/;
        if (val && !reg.test(val)) {
            alert('密码格式错误！');

        }


    }


    /*确认密码验证*/
    password2.onfocus = function () {
        tip3.style.display = "block";
        password2.placeholder ="";

    }
    password2.onblur = function () {
        tip3.style.display = "none";
        password2.placeholder = "请再次输入密码";
        var val = password.value;
        var reg = password2.value;
        if (val && val!=reg) {
            alert('两次输入的密码不一致');

        }


    }






    /*手机号码验证*/
    phone.onfocus = function () {
        tip4.style.display = "block";
        phone.placeholder ="";

    }
    phone.onblur = function () {
        tip4.style.display = "none";
        phone.placeholder = "建议使用常用手机号";
        var val =phone.value;
        var reg =/^1[35789]\d{9}$/;
        if (val && !reg.test(val)) {
            alert('电话号码格式错误');

        }


    }






   /* 获取验证码*/
    var str = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';//0-61
    /*组成四位验证码*/
    function change() {
        var str1 = '';
        for (var i = 0; i < 4; i++){
            str1 += str[getRandom(0,61)];
        }
        getById('box').innerHTML = str1;

    }
    /* 获得一定范围的随机数*/
    function getRandom(n,m){
        if(n>m){
            var temp = n;
            n = m;
            m = temp;
        }
        n = Math.ceil(n);
        m = Math.floor(m);
        return Math.round(Math.random()*(m-n)+n);
    }
    getById('box').onclick = change;

  /*验证码验证*/
    authCode.onfocus = function () {
        tip5.style.display = "block";
        authCode.placeholder ="";

    }
    authCode.onblur = function () {
        tip5.style.display = "none";
        authCode.placeholder = "请输入验证码";
        var val = authCode.value;
        val= val.toUpperCase();


        var reg = getById('box').innerHTML;
        reg=reg.toUpperCase();
        if (val && val!=reg) {
            alert('验证码错误');
        }


    }


 /*   手机验证码*/
    phoneCode.onclick = function () {
        phoneCode.placeholder=" ";

    }
    phoneCode.onblur = function () {

        phoneCode.placeholder="请输入手机验证码";

    }







    $(".button2").click(function () {
        $("input").each();


        $("#form1").submit();


    })



</script>

</body>
</html>