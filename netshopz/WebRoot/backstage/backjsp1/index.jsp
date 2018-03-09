<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%@page import="com.userDao.Users"%> 
 <%@page import="java.util.*"%> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>系统首页</title>
    <link rel="stylesheet" href="../jquery-easyui-1.3.5/themes/default/easyui.css">
    <link rel="stylesheet" href="../jquery-easyui-1.3.5/themes/icon.css">
    <script src="../jquery-easyui-1.3.5/jquery.min.js"></script>
    <script src="../jquery-easyui-1.3.5/jquery.easyui.min.js"></script>
        <script src="../jquery-easyui-1.3.5/locale/easyui-lang-zh_CN.js"></script>
    <style>
        *{
            margin: 0;
            padding: 0;
            text-align: center;
        }

      .header{
          text-align: center;
          font-size: large;
          margin-top: 20px;
      }

        p a{
            text-align: center;
            text-decoration: solid rgba(54,27,69,0.48) ;

        }
    </style>

</head>

<body>
<div id="cc" class="easyui-layout" data-options="fit:true">
  
    <div data-options="region:'north',title:' ',split:true" style="height:100px;"> <p class="header">后台管理系统</p> </div>
    <div data-options="region:'south',split:true" style="height:50px;">
        <div>  Copyright©1996-2017 by:darkjazz</div>

    </div>

    <div data-options="region:'west',title:'功能菜单',split:true" style="width:250px;">
        <div id="menu1">
        <div title="首页">
            <p><a href="#" at="backstage_BackStageServlet_userlistByPage">用户信息</a></p>
            <p><a href="#"  onclick="addTab('分类管理','admin_category_list')">密码管理<div></div></a></p>
        </div>
        <div title="仓库管理">
            <p><a href="#" at="backstage_BackStageServlet_goodlistByPage">商品管理</a></p>
            <p><a href="#">增加分类</a></p>
        </div>
        <div title="用户管理">
            <p><a href="#">用户管理</a></p>

            <p><a href="#">权限管理</a></p>
        </div>
        <div title="系统设置">
            <p><a href="#">系统设置</a></p>
            <p><a href="#">权限管理</a></p>
        </div>
    </div>
    </div>
    <div data-options="region:'center'," style="padding:5px;background:#eee;">

        <div id="tab">
        </div>
</div>


<script>
    $(function () {
        $('#menu1').accordion({
            fit: true
        });

        $('#tab').tabs({
            fit:true,
        });
        $('#menu1 p a').click(function () {
            var txt = $(this).html();
            var res = $('#tab').tabs('exists',txt);
            var at=$(this).attr("at");
            console.log(at);

            if(!res){
                $('#tab').tabs('add',{
                    title:txt,
                    closable:true,
                    href:at,
                })
            }else{
                $('#tab').tabs('select',txt);
            }
        });
    })


</script>


</body>
</html>