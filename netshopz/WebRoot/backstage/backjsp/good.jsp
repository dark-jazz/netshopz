<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.goods.Good"%> 
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
<title>商品信息</title>
<link rel="stylesheet"
	href="../jquery-easyui-1.3.5/themes/default/easyui.css">
<link rel="stylesheet" href="../jquery-easyui-1.3.5/themes/icon.css">
<script src="../jquery-easyui-1.3.5/jquery.min.js"></script>
<script src="../jquery-easyui-1.3.5/jquery.easyui.min.js"></script>
<script src="../jquery-easyui-1.3.5/locale/easyui-lang-zh_CN.js"></script>
<script src="./validate.js"></script>
   <script type="text/javascript">
     function confirmDel(goodsId)
     {
        if(window.confirm("确定删除该条记录吗？"))
        {
           document.location="backstage_BackStageServlet_delGood?goodsId="+goodsId;
        }
     }
   </script>

<style>
.head {
	background-color: #CCCCCC;
}
</style>


</head>
<body>
	<div align="center">
		<table border="1" width="80%" cellspacing="0">
			<thead>
				<tr class="head">
					<th>商品编号</th>
					<th>商品名称</th>
					<th>剩余库存</th>
					<th>商品价格</th>
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
						<td>${l.descript}</td>
						<td>${l.sortId}</td>

					   <th width="120px"><a href="backstage_BackStageServlet_updateGood?goodsId=${l.goodsId}">修改 </a> &amp <button onclick="confirmDel(${l.goodsId})">删除</button>  </td>
					</tr>

				</c:forEach>
			</thead>
		</table>
		<div>
			<a href="backstage_BackStageServlet_goodlistByPage?page=first">首页</a>
			<a href="backstage_BackStageServlet_goodlistByPage?page=pre">上一页</a>
			<a href="backstage_BackStageServlet_goodlistByPage?page=next">下一页</a>
			<a href="backstage_BackStageServlet_goodlistByPage?page=last">末页</a>
		</div>

	</div>
</html>

