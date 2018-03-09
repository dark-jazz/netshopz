<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.userDao.*"%>
<%@page import="java.util.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户信息</title>
<link rel="stylesheet"
	href="../jquery-easyui-1.3.5/themes/default/easyui.css">
<link rel="stylesheet" href="../jquery-easyui-1.3.5/themes/icon.css">
<script src="../jquery-easyui-1.3.5/jquery.min.js"></script>
<script src="../jquery-easyui-1.3.5/jquery.easyui.min.js"></script>
<script src="../jquery-easyui-1.3.5/locale/easyui-lang-zh_CN.js"></script>
<script src="./validate.js"></script>
<script type="text/javascript">
	function confirmDel(userId) {
		if (window.confirm("确定删除该条记录吗？")) {
			document.location = "backstage_BackStageServlet_del?userId="
					+ userId;
		}
	}
</script>
<style>
.head {
	background-color: #CCCCCC;
}

a:hover {
	background-color: #c3dde0;
	border-color: #a9c6c9;
}
</style>


</head>
<body>
	<div align="center">
		<table border="1" width="80%" cellspacing="0">
			<thead>
				<tr class="head">
					<th>用户编号</th>
					<th>用户名</th>
					<th>电话</th>
					<th>管理操作</th>
				</tr>

				<c:forEach items="${backList}" var="l">
					<tr>
						<th>${l.userId}</th>
						<th>${l.userName}</th>
						<th>${l.tel}</th>
						<th width="120px"><a
							href="backstage_BackStageServlet_update?userId=${l.userId}">修改
						</a> &amp
							<button onclick="confirmDel(${l.userId})">删除</button> <%-- <a href="backstage_BackStageServlet_del?userId=${l.userId}">删除</a> --%>
						</td>
					</tr>

				</c:forEach>
			</thead>
		</table>
		<div>
			<a href="backstage_BackStageServlet_userlistByPage?page=first">首页</a>
			<a href="backstage_BackStageServlet_userlistByPage?page=pre">上一页</a>
			<a href="backstage_BackStageServlet_userlistByPage?page=next">下一页</a>
			<a href="backstage_BackStageServlet_userlistByPage?page=last">末页</a>
		</div>
</body>



</script>



</html>

