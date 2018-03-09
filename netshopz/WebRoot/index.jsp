<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
  HttpSession hs=request.getSession(); 
  
 /*  out.print(hs.getAttribute("flag")); //调试信息
  out.print(hs.getId()); */

%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="css.css">
    <style>
    #logout{
    
    display:none;
    
    }
    
    
    </style>
    
    
</head>
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
          











            <a href="./register.jsp">注册</a>
           
           
            <a href="./enter.jsp" style="<% 
           // hs=request.getSession();
              
            if(hs.getAttribute("flag")=="logged"){
            out.print("display:none;"); 
            
            
            }
            
            %>"
            >登录  </a>
            
           
            <a id="logout" href="./do_quit" style="<% 
            // hs=request.getSession();
              
             if(hs.getAttribute("flag")=="logged"){
             out.print("display:block");
            }
            
            
            
            
            %>">退出 </a> 
            
            
             
          
            <a href="do_buycar">购物车
                   
          </a>
          
          
         
          
        </div>
    </div>
</div>
<div class="photo">
    <img src="./photo/3.png" alt="加载失败" title="212">
</div>


<div class="photo2">
    <a href="#">新品推荐，精心挑选</a>
    <p> 家庭必备实用小单品</p>
    <ul id="one">
        <li><a href="http://qingzhu.youhaovip.com/products/p000018"> <img src="./photo/4.png" alt=""></a>
            <h1>便捷清洁扫帚</h1>
            <p>¥580.00</p>


        </li>
        <li>
            <a href="http://qingzhu.youhaovip.com/products/p000018"> <img src="./photo/5.png" alt=""></a>
            <h1>简约多拼接彩色木制积木</h1>
            <p>¥300.00</p>


        </li>
        <li>
            <a href="http://qingzhu.youhaovip.com/products/p000018"> <img src="./photo/6.png" alt=""></a>
            <h1>黑陶自然花香蜡烛</h1>
            <p>¥580.00</p>


        </li>
        <li>
            <a href="http://qingzhu.youhaovip.com/products/p000018"> <img src="./photo/7.png" alt=""></a>
            <h1>简约时尚水泥花瓶</h1>
            <p>¥580.00</p>

        </li>
    </ul>

    <img src="./photo/left.png" alt="按钮" class="button1">
    <img src="./photo/right.png" alt="按钮" class="button2">

</div>

<div class="photo2" id="ph1">
    <a href="#">专题活动，限时促销</a>
    <p> 严选材质，用心设计，精致生活</p>
    <div class="left2">
        <img src="./photo/6.jpg" alt="">

    </div>

    <div class="right2">
        <div><img src="./photo/7.jpg" alt=""></div>
        <div style="padding-top: 5px"><img src="./photo/8.jpg" alt=""></div>

    </div>


</div>


<div class="photo2" id="ph2">
    <a href="#">青竹家居，你的家居首选</a>
    <p>天然之源，诚挚之礼，严格质检</p>
    <ul>

        <li><img src="./photo/10.png" alt="" class="firstph"></li>
        <li><img src="./photo/11.png" alt="">
            <h1>简约时尚水泥花瓶</h1>
            <p>¥580.00</p></li>
        <li><img src="./photo/12.png" alt="">
            <h1>简约时尚水泥花瓶</h1>
            <p>¥580.00</p></li>
        <li><img src="./photo/13.png" alt="">
            <h1>简约时尚水泥花瓶</h1>
            <p>¥580.00</p></li>
        <li><img src="./photo/14.png" alt="" style="padding-right: 0px">
            <h1>简约时尚水泥花瓶</h1>
            <p>¥580.00</p></li>


    </ul>


    <ul id="under">
        <li><img src="./photo/15.png" alt="" class="firstph"></li>
        <li><img src="./photo/16.png" alt="">
            <h1>简约时尚水泥花瓶</h1>
            <p>¥580.00</p></li>
        <li><img src="./photo/17.png" alt="">
            <h1>简约时尚水泥花瓶</h1>
            <p>¥580.00</p></li>
        <li><img src="./photo/18.png" alt="">
            <h1>简约时尚水泥花瓶</h1>
            <p>¥580.00</p></li>
        <li><img src="./photo/19.png" alt="">
            <h1>简约时尚水泥花瓶</h1>
            <p>¥580.00</p></li>


    </ul>

</div>


<div class="photo2">


    <a href="#" style="display: block;margin-top: 100px;padding-top: 100px">全球大牌优选，买手用心挑选</a>
    <p> 全球好货，用心设计，精心生活</p>
    <div class="left3">
        <img src="./photo/15.jpg" alt="">

    </div>

    <div class="center3">
        <div><img src="./photo/16.jpg" alt=""></div>
        <div style="padding-top: 5px"><img src="./photo/17.jpg" alt=""></div>

    </div>
    <div class="right3">
        <div><img src="./photo/18.jpg" alt=""></div>


    </div>

    <div class="under3">
        <ul class="five">
            <li><img src="./photo/20.png" alt="">
                <p> 自然选择，精选用料</p>
            </li>
            <li><img src="./photo/21.png" alt="">
                <p> 源点生活</p></li>
            <li><img src="./photo/22.png" alt="">
                <p> 自然选择，精选用料</p></li>
            <li><img src="./photo/23.png" alt="">
                <p> 家居精选制品</p></li>
            <li style="margin-right: 0px"><img src="./photo/24.png" alt="">
                <p> 自然选择，精选用料</p></li>
        </ul>


    </div>

    <script>

        var ali = document.querySelectorAll(".five li");
        console.log(ali);
        var g = 0;
        for (var i = 0; i < ali.length; i++) {


            ali[i].onmouseover = function () {
                var i = 0;
                var one = this;
                var time = setInterval(function () {

                    i--;
                    if (i == -80) {
                        clearInterval(time);
                    }
                    one.getElementsByTagName("img")[0].style.marginLeft = i + "px";
                }, 10)


            }


            ali[i].onmouseout = function () {
                var j = i;
                var two = this;
                var time1 = setInterval(function () {
                    clearInterval(time);
                    j++;
                    if (j == 0) {
                        clearInterval(time1);
                    }
                    two.getElementsByTagName("img")[0].style.marginLeft = j + "px";
                }, 10)


            }
        }


    </script>


</div>


<div class="last">

    <div class="photo2">


        <a href="#" style="display: block;">良品体验</a>
        <p> 用户反馈，使我们改进目标</p>
        <div class="under4">
            <ul class="six">
                <li><img src="./photo/26.png" alt="">

                    <p class="left4"></p>

                    <p class="name"> 天草陶石咖啡杯套装</p>
                    <p class="price"> ¥299.00</p>
                    <p class="content"> 使用了粉碎高品质的天草陶石后提炼而成的土，
                        制作了泛着淡青色的白瓷。用餐时可以记住食品名称、 </p>
                    <p class="under5">alice 2016-12-16 09:59 </p>
                </li>
                <li><img src="./photo/27.png" alt="">
                    <p class="left4"></p>

                    <p class="name"> 骨瓷印花餐具</p>
                    <p class="price"> ¥699</p>
                    <p class="content"> 使用了粉碎高品质的天草陶石后提炼而成的土，制作了泛着淡青色的白瓷。气味、口感逐个品味，从中感受用餐 </p>
                    <p class="under5"> 王先生 2016-12-17 09:59 </p></li>

                <li><img src="./photo/28.png" alt="">
                    <p class="left4"></p>

                    <p class="name">黑色帆布双肩包</p>
                    <p class="price"> ¥299.00</p>
                    <p class="content"> 挺好的，尺码真的很正！背部拉链设计，放心出行，为短途商旅贴心设计。防水尼龙与牛皮的优雅结合，防水尼龙，</p>
                    <p class="under5">alice 2016-12-16 09:59 </p></li>

                <li style="padding-rihgt:none"><p class="left4"></p>

                    <p class="name"> 桌面书籍收纳组合套装</p>
                    <p class="price"> ¥299.00</p>
                    <p class="content"> 挺好的，特别暖，尺码真的很正！就是靴口太小了，要提着穿，心好累哦，</p>
                    <p class="under5">alice 2016-12-16 09:59 </p><img src="./photo/29.png" alt=""></li>


            </ul>


        </div>
    </div>
</div>


<div class="lastlast">
    <div class="photo2">
        <div class="left5">
            <img src="./photo/logo2.png" alt="">
            <p> 青竹良品原创生活类电商品牌，秉承一贯的严谨态度，我们深入世界各地，
                从源头全程严格把控商品生产环节，力求帮消费者甄选到最优质的商品，
                全线采用天然原材料，控制甲醛低量无害，采用进口工艺，国际生产线不断优化，
                食材保证核心原产地新鲜直供，让你享受品质生活</p>
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
                <li class="firstline"> 支付方式</li>
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
                    <p>微信公众号 </p>
                </li>
                <li><img src="./photo/weibo1.png" alt="">
                    <p>微博公众号</p>
                </li>

            </ul>
        </div>


    </div>


</div>
</body>
</html>