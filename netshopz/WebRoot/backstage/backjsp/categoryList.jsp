<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'categoryList.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
     function confirmDel(cid)
     {
        if(window.confirm("确定删除该条记录吗？"))
        {
           document.location="admin_category_del?cid="+cid;
        }
     }
   </script>

  </head>
  
  <body>
    <div align="center">
    <div><a href="admin/categoryAdd.jsp">添加分类</a></div>
       <table border="1"  width="80%" cellspacing="0">
            <thead>
                <tr>
                    <th>分类编号</th>
                    <th>分类名称</th>
                    <th>管理操作</th>
                </tr>
                <c:forEach items="${list}" var="c">
                   <tr>
                    <td><c:out value="${c.cid }"></c:out></td>
                    <td ><c:out value="${c.cname }"></c:out></td>

                    <td ><a href="admin_category_edit?cid=${c.cid }">修改</a>&nbsp;&nbsp;  <button onclick="confirmDel(${c.cid})">删除</button></td>
                </tr>
                </c:forEach>
            </thead>
        </table>
       <a href="?pageNo=1">首页</a> &nbsp;&nbsp; <a href="?pageNo=${p.prevoius() }">上一页</a>&nbsp;&nbsp;<a href="?pageNo=${p.next() }">下一页</a>&nbsp;&nbsp;<a href="?pageNo=${p.last() }">最后一页</a>&nbsp;&nbsp;当前页${p.pageNo }/总${p.getPageCount() }页</div>     
  </body>
</html>
