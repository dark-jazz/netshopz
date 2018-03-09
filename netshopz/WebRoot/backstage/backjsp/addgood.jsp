<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.goods.Good"%> 
 <%@page import="java.util.*"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<!DOCTYPE HTML">
<html>
  <head>
    <title>新增商品</title>
  </head>
   <body>
     <form action="backstage_BackStageServlet_addGood" method="post">
         <table>
            <tr>
               <td>商品名</td>
               <td><input type="hidden" name="goodsId" value=""/>
               <input type="text" name="goodsName" value=""/></td>
            </tr>
             <tr>
               <td>商品余量</td>
               <td><input type="text" name="goodsRest" value="请输入整型"/></td>
            </tr>
             <tr>
               <td>商品价格</td>
               <td><input type="text" name="goodsPrice" value="请输入数字"/></td>
            </tr>
             <tr>
               <td>图片地址</td>
               <td><input type="text" name="goodsImage" value=""/></td>
            </tr>
             <tr>
               <td>商品描述</td>
               <td><input type="text" name="descript" value=""/></td>
            </tr>
             <tr>
               <td>商品类型</td>
               <td><input type="text" name="sortId" value="请输入数字"/></td>
            </tr>
            
            <tr>
               <td colspan="2"><input type="submit" value="提交"><input type="reset" value="重置"></td>
               
            </tr>
         </table>
     </form>
  </body>
</html>
