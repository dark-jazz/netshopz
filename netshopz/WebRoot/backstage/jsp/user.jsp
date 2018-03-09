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
 
     
      
      <table border="1px" style="width:300px;border-collapse: collapse" >
      
      <tr>
       <th> 用户编号 </th>
       <th> 用户名</th>
       <th> 用户电话</th>
       <th> 功能</th>
     </tr>
       <c:forEach items="${backList}" var="l">  
      <tr>
      <td>${l.userId}</td>
      <td>${l.userName}</td>
      <td>${l.tel}</td>
      <td width="120px"><a href="do_update?userId=${l.userId}">修改 </a> &amp <a href="do_del?userId=${l.userId}">删除</a> </td>
      </tr>
      
       </c:forEach>
       
     
       
      </table>
    
      <div><a href="do_userlistByPage?page=first">首页</a >    <a href="do_userlistByPage?page=pre">上一页</a>     <a href="do_userlistByPage?page=next">下一页</a>    <a href="do_userlistByPage?page=last" >末页</a></div>

</div>



</body>
</html>