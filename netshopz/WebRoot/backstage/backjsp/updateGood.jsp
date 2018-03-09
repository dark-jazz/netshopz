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
    <title>更新商品信息</title>
  </head>
   <body>
     <form action="backstage_BackStageServlet_update2Good" method="post">
         <table>
            <tr>
               <td>商品名</td>
               <td><input type="hidden" name="goodsId" value="${good.goodsId}"/>
               <input type="text" name="goodsName" value="${good.goodsName}"/></td>
            </tr>
             <tr>
               <td>商品余量</td>
               <td><input type="text" name="goodsRest" value="${good.goodsRest}"/></td>
            </tr>
             <tr>
               <td>商品价格</td>
               <td><input type="text" name="goodsPrice" value="${good.goodsPrice}"/></td>
            </tr>
             <tr>
               <td>图片地址</td>
               <td><input type="text" name="goodsImage" value="${good.goodsImage}"/></td>
            </tr>
             <tr>
               <td>商品描述</td>
               <td><input type="text" name="descript" value="${good.descript}"/></td>
            </tr>
             <tr>
               <td>商品类型</td>
               <td><input type="text" name="sortId" value="${good.sortId}"/></td>
            </tr>
            
            <tr>
               <td colspan="2"><input type="submit" value="提交"><input type="reset" value="重置"></td>
               
            </tr>
         </table>
     </form>
  </body>
</html>
