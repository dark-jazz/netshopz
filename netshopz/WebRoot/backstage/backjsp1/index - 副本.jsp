<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
    <!DOCTYPE html>
    <html>
    <head>
    	<meta charset="UTF-8">
    	<title>电商管理平台</title>
    	    <link rel="stylesheet" href="../jquery-easyui-1.3.5/themes/default/easyui.css">
             <link rel="stylesheet" href="../jquery-easyui-1.3.5/themes/icon.css">
              <script src="../jquery-easyui-1.3.5/jquery.min.js"></script>
             <script src="../jquery-easyui-1.3.5/jquery.easyui.min.js"></script>
        <script src="../jquery-easyui-1.3.5/locale/easyui-lang-zh_CN.js"></script>
    </head>
    <script type="text/javascript">
       function addTab(title, url){
    	if ($('#tt').tabs('exists', title)){
    		$('#tt').tabs('select', title);
    	} else {
    		var content = '<iframe scrolling="auto" frameborder="0"  src="'+url+'" style="width:100%;height:100%;"></iframe>';
    		$('#tt').tabs('add',{
    			title:title,
    			content:content,
    			closable:true
    		});
    	}
    }
    </script>
    <body>
	<div class="easyui-layout" style="width:100%;height:720px;">
		<div data-options="region:'west',split:true" title="菜单区" style="width:200px;">
			<div class="easyui-accordion" data-options="fit:true,border:false">
				<div title="用户管理" style="padding:10px;" data-options="selected:true">
					<a href="#"  onclick="addTab('用户管理','admin_customer_list')">客户管理</a><br>
    				<a href="#"  onclick="addTab('仓库管理','http://jquery.com/')">仓库管理</a><br>
    				<a href="#"  onclick="addTab('学生管理','http://jeasyui.com/')">学生管理</a><br>
				</div>
				<div title="商品管理"  style="padding:10px;">
					商品信息
				</div>
				<div title="分类管理" style="padding:10px">
					<a href="#"  onclick="addTab('分类管理','admin_category_list')">分类管理</a><br>
					<a href="#"  onclick="addTab('添加分类','categoryAdd.jsp')">添加分类</a><br>
				</div>
				<div title="属性管理" style="padding:10px">
					属性信息
				</div>
				<div title="订单管理" style="padding:10px">
					订单列表
				</div>
				<div title="系统管理" style="padding:10px">
					用户退出
				</div>
			</div>
		</div>
		<div id="tt" class="easyui-tabs" data-options="region:'center',title:'工作区',iconCls:'icon-ok'">
			<div class="easyui-tabs" data-options="fit:true,border:false,plain:true">
				<div title="About" data-options="href:'_content.html'" style="padding:10px"></div>
				<div title="DataGrid" style="padding:5px">
					<table class="easyui-datagrid"
							data-options="url:'datagrid_data1.json',method:'get',singleSelect:true,fit:true,fitColumns:true">
						<thead>
							<tr>
								<th data-options="field:'itemid'" width="80">Item ID</th>
								<th data-options="field:'productid'" width="100">Product ID</th>
								<th data-options="field:'listprice',align:'right'" width="80">List Price</th>
								<th data-options="field:'unitcost',align:'right'" width="80">Unit Cost</th>
								<th data-options="field:'attr1'" width="150">Attribute</th>
								<th data-options="field:'status',align:'center'" width="50">Status</th>
							</tr>
						</thead>
					</table>
				</div>
			</div>
		</div>
	</div>
	</body>
</html>