<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@page import="com.userDao.*"%> 
 <%@page import="java.util.*"%> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户信息</title>
    <link rel="stylesheet" href="../jquery-easyui-1.3.5/themes/default/easyui.css">
    <link rel="stylesheet" href="../jquery-easyui-1.3.5/themes/icon.css">
    <script src="../jquery-easyui-1.3.5/jquery.min.js"></script>
    <script src="../jquery-easyui-1.3.5/jquery.easyui.min.js"></script>
    <script src="../jquery-easyui-1.3.5/locale/easyui-lang-zh_CN.js"></script>
    <script src="./validate.js"></script>
</head>

<body>
<div>
    <table id="table"></table>
    <div id="dia"></div>
       <table border="1px" style="width:600px;border-collapse: collapse">
      
      <tr>
       <th> 商品编号 </th>
       <th>商品名称</th>
       <th> 剩余库存</th>
       <th> 商品价格</th>
       <th>商品图片</th>
       <th>商品描述</th>
       <th>商品分类</th>
       <th>功能</th>
     </tr>
       <c:forEach items="${backList}" var="l">  
      <tr>
      <td>${l.goodsId}</td>
      <td>${l.goodsName}</td>
      <td>${l.goodsRest}</td>
       <td>${l.goodsPrice}</td>
        <td>${l.goodsImage}</td> 
        <td>${l.goodsRest}</td>
       <td>${l.goodsRest}</td>
      
      
      <td>修改  删除 </td>
      </tr>
      
       </c:forEach>
      </table>
     <div><a href="backstage_BackStageServlet_goodlistByPage?page=first">首页</a >    <a href="backstage_BackStageServlet_goodlistByPage?page=pre">上一页</a>     <a href="backstage_BackStageServlet_goodlistByPage?page=next">下一页</a>    <a href="backstage_BackStageServlet_goodlistByPage?page=last" >末页</a></div>
    
</div>

<script>

    $(function () {
        $("table").datagrid({
            url:'',

            columns: [[
                {checkbox: true},
                {field: 'id', title: '编号', width: 100},
                {field: 'name', title: '姓名', width: 100},
                {
                    field: 'age',
                    title: '年龄',
                    width: 100,
                    formatter: function (value, row, index) {
                        return value < 20 ? '<span style="color:red">' + value + '</span>' : value;
                    }
                },
                {
                    field: 'sex',
                    title: '性别',
                    width: 100,
                    formatter: function (value, row, index) {
                        return value === 0 ? '男' : '女';
                    }
                },
                {field: 'address', title: '地址', width: 300}
            ]],
            pagination: true,
            toolbar: [{
                iconCls: 'icon-add',
                text: '新增',
                handler: function () {
                    adduser();
                }
            }, '-', {
                iconCls: 'icon-edit',
                text: '修改',
                handler: function () {
                    updateUser();


                }
            }, '-', {
                iconCls: 'icon-cancel',
                text: '删除',
                handler: function () {
                    removeUser();
                }
            }]
        })

        function adduser() {
            $("#dia").dialog({
               title:"新增用户",
                width: 320,
                height: 300,
                url: " ",
                href: "./增加用户.html",
                modal: true,
                buttons: [{
                    text: '保存',
                    iconCls: 'icon-save',
                    handler: function () {

                        $("#add").form('submit', {
                            url: '',
                            onSubmit: function () {
                                var res = $('#add_form').form('validate');
                                if (!res) {
                                    return false;
                                }
                            },
                            success: function () {
                                $('#dia').dialog('close');
                                $('#table').datagrid('reload');
                            }
                        })

                    }
                }, {

                    text: '取消',
                    iconCls: 'icon-cancel',
                    handler: function () {
                        $('#dia').dialog('close');
                    }

                }]


            })


        }
        function updateUser() {
            var res = $('#table').datagrid('getSelected');  //判断是否选中项目
            if(!res){                                //如果没有选中
                $.messager.show({                    //弹出提示框
                    title:'错误提示',
                    msg:'请选中一条记录',
                    timeout:1000,                   //提示在一秒钟自动消失
                    showType:'slide'                //展示的方式为滑动
                });
            }else{
                $('#dia').dialog({               //弹出弹窗
                    width:350,
                    height:400,
                    title:'修改用户',
                    href:'修改用户信息.html',
                    modal:true,
                    buttons:[{                  //按钮
                        text:'保存',            //按钮名称
                        iconCls:'icon-save',
                        handler:function () {   //按钮功能函数
                            $('#update_form').form('submit',{    //选中表单，并且使用submit功能
                                url:'',                           //提交网址，
                                onSubmit:function () {
                                    var res = $('#update_form').form('validate');
                                    if(!res){
                                        return false;
                                    }
                                },
                                success:function () {
                                    $('#dia').dialog('close');
                                    $('#table').datagrid('reload');
                                }
                            })
                        }
                    },{
                        text:'取消',
                        iconCls:'icon-cancel',
                        handler:function(){
                            $('#dia1').dialog('close');
                        }
                    }]
                })
            }

        }
        function removeUser() {
            var res = $('#table').datagrid('getSelected');
            if(!res){
                $.messager.show({
                    title:'错误提示',
                    msg:'请选择一条记录',
                    timeout:0,
                    showType:'slide'
                })
            }else{
                var id = res.id;
                $.ajax({
                    success:function(data){
                        $('#table').datagrid('reload');
                    }
                })
            }
        }




    })
</script>


</body>
</html>