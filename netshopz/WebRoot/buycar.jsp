<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@page import="com.orderDao.Order"%> 
 <%@page import="java.util.*"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
  HttpSession hs=request.getSession(); 
 
 
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>青竹良品首页</title>
    <link rel="stylesheet" href="./css/style.css">
    <script src="./js/js.js">

    </script>
</head>

<body>
<div id="top" >
    <div class="top-nav">
        <div class="top-left">
            <img src="./image/logo.png" alt="logo">
        </div>
        <div class="top-center">
            <ul>
                <li><a href="#">查看所有类别</a></li>
                <li><a href="./index.jsp">首页</a></li>
                <li><a href="#">所有产品</a></li>
                <li><a href="#">博客</a></li>
                <li><a href="#">文章列表</a></li>
            </ul>
        </div>
       <!--  <div class="top-right">
            <a href="./login.html">登录</a>
            <span>|</span>
            <a href="./register.jsp">注册</a>
            <a href="javascript:void(0);"><img src="./image/shopping111.png" alt=""></a>
        </div> -->
        <div class="top-right">
         <a href="#"> 欢迎 <%
              
             //hs=request.getSession(); 
             if(hs.getAttribute("flag")=="logged"){
            	
        	 String one="";
             if(request.getCookies()==null){}
             else{
             Cookie[] ck1=request.getCookies();
            
            for(Cookie i:ck1){
        	  if(i.getName().equals("userName")==true){
        		 one=i.getValue();
        		
           }
        	
          }
          
          out.print(one);}}
             
             
          
             
             
             
          %></a>
          
          
           <%--   <a  href="./do_quit" style="<% 
            // hs=request.getSession();
              
             if(hs.getAttribute("flag")=="logged"){
             out.print("display:block");
            }

            
            %>">退出 </a> 
          
          
          
          
          

            <a href="./register.jsp">注册</a>
            <a href="./enter.jsp" style="<% 
           // hs=request.getSession();
              
            if(hs.getAttribute("flag")=="logged"){
            out.print("display:none;"); 
            
            
            }
            
            %>"
            >登录  </a>
            
            --%>
         
        
        </div>
        
    </div>
</div>
<!--购物车-->

<div id="gwc">
    <div class="gwc-goods">
        <h2>购物车
        
        <%

        List ls=(List)hs.getAttribute("orderlist");
        Iterator<Order> it=ls.iterator();
  	    while(it.hasNext()){
  		   Order one=it.next();
  		   System.out.println(one.toString());
  		  
  	  }
        
   

%>
        </h2>
        <div class="goods">
            <div id="goods-head" class="aa">
                <div class="check-box">
                    <input type="checkbox" class="inp-check">
                <span>全选</span>
                </div>
                <span class="goods-name">
                    商品名称
                </span>
                <span class="pace">
                    单价
                </span>
                <span class="cont">
                    数量
                </span>
                <span class="subtotal">
                    小计
                </span>
                <span class="oper">
                    操作
                </span>
            </div>
            <c:forEach items="${orderlist}" var="l">
            <div class="goods-list">
                <div class="check-group">
                    <input type="checkbox">
                </div>
                <div class="list-img">
                    <a href="./saozhou.html"><img src="./image/s.png" alt=""></a>
                </div>
                <div class="list-name">
                    <a href="./saozhou.html">
                ${l.goodsName}
                                </a>
                </div>

                <div id="list-pace">
                     ¥${l.goodsSum}
                </div>
                <div class="list-cont">
                    <div class="cont-body">
                        <span id="shut_button">-</span>
                        <input type="text" id="cont-cont" value="1">
                        <span id="add_button">+</span>
                    </div>
                </div>
                <div id="list-summoney">
                    400
                </div>
                <div class="list-oper">
                    删除
                </div>
            </div>
</c:forEach> 

            <div id="confirm">
                <div class="confirm-center">
                    <div id="confirm-check">
                        <input type="checkbox">
                    </div>
                    <span class="confirm-left">全选</span>
                    <span class="confirm-left"><a href="#">删除</a></span>
                    <span class="confirm-left"><a href="#">清除下架商品</a></span>
                    <a href="#" id="close_money">确认结算</a>
                    <div id="confirm-ggmoney">
                        <div class="aa">
                        <span id="confirm-zjq">¥680</span>
                        <span class="hjtext">
                            合计（不含运费）：
                        </span>
                        <span class="fright">件</span>
                        <span class="confirm-cont">33</span>
                        <span class="fright">已选商品</span>
                        </div>
                        <div class="aa">
                            <span class="confirm-yh">¥0</span>
                            <span class="fright">
                                已优惠：
                            </span>
                        </div>


                    </div>
                </div>

            </div>
        </div>
    </div>
</div>


<div id="bottom">
    <div class="center">
        <div class="aa">
            <div class="bt_left">
                <a href="#"><img src="./image/logo.png" alt=""></a>
                <p style="opacity: 0.6;">
                    青竹良品原创生活类电商品牌，秉承一贯的严谨态度，我们深入世界各地，
                    从源头全程严格把控商品生产环节，力求帮消费者甄选到最优质的商品，
                    全线采用天然原材料，控制甲醛低量无害，采用进口工艺，国际生产线不断优化，
                    食材保证核心原产地新鲜直供，让你享受品质生活
                </p>
            </div>
            <div class="bt_center">
                <dl>
                    <dt><a href="">关于我们</a></dt>
                    <dd><a href="">我的品牌</a></dd>
                    <dd><a href="">公司动态</a></dd>
                    <dd><a href="">经历发展</a></dd>
                    <dd><a href="">商品推广</a></dd>
                </dl>
                <dl>
                    <dt><a href="">支付方式</a></dt>
                    <dd><a href="">微信支付</a></dd>
                    <dd><a href="">支付宝</a></dd>
                    <dd><a href="">百度钱包</a></dd>
                    <dd><a href="">货到付款</a></dd>
                </dl>
                <dl>
                    <dt><a href="">相关服务</a></dt>
                    <dd><a href="">退货政策</a></dd>
                    <dd><a href="">购物流程</a></dd>
                    <dd><a href="">客服服务</a></dd>
                    <dd><a href="">商务合作</a></dd>
                </dl>
            </div>
            <div class="bt_right">
                <div class="right_ewm">
                    <img src="./image/wxgongzhong.png" alt="">
                    <p>微信公众号</p>
                </div>
                <div class="right_ewm">
                    <img src="./image/wbgongzhong.png" alt="">
                    <p>微博公众号</p>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="foot_bar">
    <div class="center">
        <div class="aa">
            <div class="foot_left">
                <span>粤ICP备12043194号 © 2017youhaosuda.com</span>
            </div>
            <div class="foot_right"></div>
        </div>
    </div>
</div>


<div id="friend">

    <a href="#">
        <span class="you"></span>
        <span>由友好速搭提供技术与服务支持</span>
    </a>

</div>
</body>
</html>