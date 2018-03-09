<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
 <%@page import="com.goods.Good"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<meta charset="UTF-8">
<title>Title</title>
<link rel="stylesheet" href="css.css">
<style>
#logout {
	display: none;
}
</style>


<body>
	<div class="Topouter">
		<div class="outer">
			<div class="left">
				<a href="./index.html"><img src="./photo/logo.png" alt="logo"></a>
			</div>
			<div class="center">
				<ul>
					<li><a href="backstage/backjsp/index.jsp">过滤器后台</a></li>
					<li><a href="backstage/jsp">后台</a></li>
					<li>查看所有类别</li>
					
			    <li>
                  <form action="do_good">
                
                <input type="text" name="goodsName" placeholder="请输入商品名">
                <input type="submit" value="搜索">
                
                
                </form>
                
                
                
                   </li>
					<!--  <li><img src="./photo/2.png" alt="搜索" style="padding-left: 100px;margin-top: 20px"></li> -->
				</ul>
			</div>
			<div class="right">


				<a href="#"> 欢迎 <%
              
             //hs=request.getSession(); 
             if(session.getAttribute("flag")=="logged"){
            	
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
             
             
          
             
             
             
          %></a> <a href="./register.jsp">注册</a> <a href="./enter.jsp"
					style="<% 
           // hs=request.getSession();
              
            if(session.getAttribute("flag")=="logged"){
            out.print("display:none;"); 
            
            
            }
            
            %>">登录
				</a> <a id="logout" href="./do_quit"
					style="<% 
            // hs=request.getSession();
              
             if(session.getAttribute("flag")=="logged"){
             out.print("display:block");
            }    
            %>">退出
				</a> <a href="do_buycar">购物车 </a>
			</div>
		</div>
	</div>

	<div class="p1">
		<div class="p2">
			<div class="top">
				<ul>
					<li><a
						href="http://localhost:63342/webX/2017.12.15/youhaovip.com.html">首页</a></li>
					<li><</li>
					<li><a href="#">所有商品</a></li>
					<li><</li>
					<li style="color: #555555; font-size: 14px">${good.goodsName}</li>
				</ul>
			</div>
		</div>

		<div class="p3">

			<div class="left">
				<img src="./photo/${good.goodsImage}" alt="图片加载失败">
			</div>

			<div class="right">
				<p
					style="font-size: 18px;
        font-weight: 700;
        line-height: 1.2;
        margin: 0;">${good.goodsName}</p>
				<p
					style="font-size: 14px;
    margin-top: 7px;
    line-height: 22px;
    color: #999999;  ">${good.descript}</p>
				<p
					style="font-size: 20px;
            font-weight: 700;
             color: #db2e2e;
              margin-top: 30px">
					￥${good.goodsPrice} <span style="font-size: 14px;line-height: 1;color: #555555; ">
						已售出0件</span>
				</p>
				<hr style="margin-top: 18px">
				<p
					style="font-size: 14px;
font-weight: 400;
width: 100%;
padding-top: 14px;
padding-bottom: 4px;">
					选择数量</p>
				<form action="" id="form1">
					<p>
						<input type="number" name="number" step="1" height="28px"
							width="44px"><span
							style="font-size: 14px;color: #555555;">件(库存${good.goodsRest}件)</span>
					</p>

				</form>

				<p>
					<img src="./photo/buy.png" alt=""
						style="width: 280px;
   height: 50px;

margin-top: 20px;">
				</p>
			</div>

			<div>
				<img src="./photo/102.png" alt=""
					style="width: 75px;height: 75px;position: absolute; top: 670px;right: 1255px">
			</div>


			<div
				style="position: absolute;top: 800px; margin: 0px auto;padding-top: 30px; padding-left: 30px;padding-right: 30px;width: 1080px">
				<hr>
				<img src="./photo/103.jpeg" alt=""
					style="width: 1080px;height: 558px;margin-top: 30px"> <img
					src="./photo/104.jpeg" alt=""
					style="width: 1080px;height: 401px;margin-top: 30px">
			</div>


		</div>


	</div>
	<div class="lastlast">
		<div class="photo2">
			<div class="left5">
				<img src="./photo/logo2.png" alt="">
				<p>青竹良品原创生活类电商品牌，秉承一贯的严谨态度，我们深入世界各地，
					从源头全程严格把控商品生产环节，力求帮消费者甄选到最优质的商品，
					全线采用天然原材料，控制甲醛低量无害，采用进口工艺，国际生产线不断优化， 食材保证核心原产地新鲜直供，让你享受品质生活</p>
			</div>

			<div class="center5">
				<ul>
					<li class="firstline">关于我们</li>
					<li>我的品牌</li>
					<li>公司动态</li>
					<li>经历发展</li>
					<li>商品推广</li>
				</ul>
				<ul>
					<li class="firstline">支付方式</li>
					<li>微信支付</li>
					<li>支付宝</li>
					<li>百度钱包</li>
					<li>货到付款</li>


				</ul>
				<ul>
					<li class="firstline">相关服务</li>
					<li>退货政策</li>
					<li>购物流程</li>
					<li>客服服务</li>
					<li>商务合作</li>
				</ul>
			</div>


			<div class="right5">
				<ul>
					<li><img src="./photo/wx1.png" alt="">
						<p>微信公众号</p></li>
					<li><img src="./photo/weibo1.png" alt="">
						<p>微博公众号</p></li>

				</ul>
			</div>


		</div>


	</div>
</body>
</html>
