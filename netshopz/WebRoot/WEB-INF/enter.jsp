<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Title</title>
<link rel="stylesheet" href="./css/css3.css">
<style>
* {
	margin: 0;
	padding: 0;
}

#outer {
	/* width: 1573px;*/
	padding-top: 70px;
	background: url("./photo/logBg.png "), no-repeat;
	height: 670px;
	background-size: auto 750px;
}

#center {
	width: 400px;
	height: 500px;
	margin: 80px auto 0px;
	border-radius: 3px;
	background-color: white;
}

#center2 {
	width: 300px;
	height: 400px;
	padding: 50px;
}

input {
	font-size: 16px;
	height: 42px;
	line-height: 40px;
	display: block;
	border-radius: 3px;
	box-sizing: border-box;
	border: 1px solid #d5d5d5;
	min-width: 120px;
	width: 100%;
	outline: 0;
	text-indent: 1em;
	color: #666;
	margin-top: 30px;
}

h3 {
	font-size: 18px;
	margin: 0 0 24px;
	color: #333;
	font-weight: 400;
}

#one li {
	list-style: none;
	background-color: #cccccc;
	border-radius: 50%;
	float: left;
	width: 34px;
	height: 34px;
	margin-left: 12px;
	text-align: center;
	line-height: 34px;
	margin-top: 30px;
}
</style>
</head>
<body>
	<div class="Topouter">
		<div class="outer">

			<div class="left">
				<a href="./index.jsp"><img src="./photo/logo.png" alt="logo"></a>
			</div>


			<div class="center">
				<ul>
					<li>查看所有类别</li>
					<li><a href="./index.jsp" style="text-decoration: none;color:black">首页</a></li>
					<li>所有产品</li>
					<li>博客</li>
					<li>文章列表</li>
					<li><img src="./photo/2.png" alt="搜索"
						style="padding-left: 100px;margin-top: 20px"></li>
				</ul>
			</div>

			<div class="right">

				<a href="./register.jsp">注册</a> <a href="./enter.jsp">登录 <span> </span>
				</a>
			</div>

		</div>


	</div>
	<div id="outer">
		<div id="center">
			<div id="center2">
				<h3>登录</h3>
				
				<form action="do_login" method="get">
					<div>
						<%
							out.print(request.getAttribute("msg"));
						%>

					</div>
					<div class="input1" style="position: relative">
						<input class="one" type="text" name="userName">
						<p
							style="position: absolute;font-size: 10px;top: 10px; left:20px;z-index: 5;background-color: white">手机/邮箱/用户名</p>
					</div>

					<div class="input2" style="position: relative">
						<input type="password" name="password" class="two">
						<p
							style="position: absolute;font-size: 10px;top: 10px; left:20px;z-index: 5;background-color: white">登录密码</p>
					</div>


				
				<a href="#"
					style="float: left;margin-top: 20px;text-decoration: none; color: #555555;font-size: 12px">注册</a>
				<a href="#"
					style="float: right;margin-top: 20px;text-decoration: none; color: #555555;font-size: 12px">忘记密码</a>


				<button
					style="width: 300px;height: 48px;margin-top: 10px;background: #c78a49;"
					onclick="this.form.submit()">
					<span
						style="font-size: 18px;
height: 48px;
line-height: 46px;
padding: 0 60px;
color: white;
">登录</span>
				</button>
</form>
				<span
					style="display: inline-block;
margin-top: 20px;
position: absolute;
top: 10px;
padding: 0 6px;
left: 50%;
margin-left: -42px;
background: #fff;
color: #666;
text-align: center;
font-size: 12px;
    font-family: 'Microsoft Yahei',verdana;
    position: relative;
    z-index: 3;
}
">社交账号登录</span>
				<div
					style="width: 300px;
height: 70px;
position: relative;
border-top: 1px solid #cccccc;

">
					<ul id="one">
						<li>1</li>
						<li>2</li>
						<li>3</li>
						<li>4</li>
						<li>5</li>
						<li>6</li>
					</ul>




				</div>


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



		<script src="jquery1.11.1.min.js"></script>

		<script>
			$(".input1").click(function() {
				$(this).find("p").animate({
					top : -10
				})
				$(".input1").find(".one").blur(function() {
					$(".input1").find(".one").next().animate({
						top : +10
					})

				})

			})
			
				$(".input2").click(function() {
				$(this).find("p").animate({
					top : -10
				})
				$(".input2").find(".two").blur(function() {
					$(".input2").find(".two").next().animate({
						top : +10
					})

				})

			})
			
		
		</script>
</body>
</html>