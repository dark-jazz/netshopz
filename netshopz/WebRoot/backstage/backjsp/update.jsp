<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.userDao.Users"%> 
 <%@page import="java.util.*"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<!DOCTYPE HTML">
<html>
  <head>
    <title>My JSP 'update.jsp' starting page</title>
  </head>
  
   <body>
     <form action="backstage_BackStageServlet_update2" method="post">
         <table>
            <tr>
               <td>用户名：</td>
               <td><input type="hidden" name="userId" value="${user.userId }"/>
               <input type="text" name="userName" value="${user.userName }"/></td>
            </tr>
             <tr>
               <td>密码：</td>
               <td><input type="password" name="password" value="${user.passWord }"/></td>
            </tr>
             <tr>
               <td>电话：</td>
               <td><input type="text" name="tel" value="${user.tel }"/></td>
            </tr>
            
            <tr>
               <td colspan="2"><input type="submit" value="提交"><input type="reset" value="重置"></td>
               
            </tr>
         </table>
     </form>
  </body>
</html>
