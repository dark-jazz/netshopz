<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.userDao.Users"%> 
 <%@page import="java.util.*"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
Users one=(Users)request.getAttribute("user");
out.print(one.toString());

%>

<!DOCTYPE HTML">
<html>
  <head>
    <title>My JSP 'update.jsp' starting page</title>
  </head>
  
  <body>
  <form action="backstage_BackStageServlet_update2" method="post">
  
 <input type="hidden" name=userId value=<%out.print(one.getUserId()); %>>    
  用户名 <input type="text" name="userName" value=<%out.print(one.getUserName()); %>>
  密码 <input type="text" name="password"  value=<%out.print(one.getPassWord()); %> >
  电话<input type="tel" name="tel" value=<%out.print(one.getTel()); %>>
  提交<input type="submit">
  </form>
  
  
  
  
  
  </body>
</html>
