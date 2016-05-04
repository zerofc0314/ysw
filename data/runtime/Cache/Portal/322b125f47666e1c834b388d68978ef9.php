<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
	<head>
		                <meta charset="utf-8">
		<title><?php echo ($site_name); ?></title>
                <meta name="keywords" content="<?php echo ($site_seo_keywords); ?>">
		<meta name="description" content="<?php echo ($site_seo_description); ?>">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <link href="/trunk/tpl/YS/Public/Css/base.css" type="text/css" rel="stylesheet">

		<link rel="stylesheet" href="/trunk/tpl/YS/Public/Css/Contact_Us.css" type="text/css"/>
                <link rel="stylesheet" href="/trunk/tpl/YS/Public/Css/swiper.3.2.7.min.css">
                <script src="http://api.map.baidu.com/api?v=1.3"></script>
                           
	</head>
	<body>

              		<div class="header">
			<div class="top"></div>
			<!--main开始-->
			<div class="main">
				<ul class="main_collect">
					<li><span><img src="/trunk/tpl/YS/Public/Images/icon.png"></span><a href="#">收藏</a></li>
					<li><span><img src="/trunk/tpl/YS/Public/Images/icon.png"></span><a href="#">0791-87368599</a></li>
				</ul>
			</div>
			<!--main结束-->

			<!--menu开始-->
			<div class="menu">
				<ul class="menu_box">
					<li>
						<dl>
							<dt>H</dt>
							<dd class="menu_color"><a href="/">公司首页 <br />ome page</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt>G</dt>
							<dd><a href="<?php echo U('Portal/page/index','id=5');?>">公司简介 <br />roup profile</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt>H</dt>
							<dd><a href="<?php echo U('Portal/list/index','id=10');?>">养生学堂 <br />ealth school</a></dd>
						</dl>
					</li>
					<li class="logo">
						<img src="/trunk/tpl/YS/Public/Images/logo.png">
					</li>
					<li>
						<dl>
							<dt>P</dt>
							<dd><a href="<?php echo U('Portal/list/index','id=11');?>">产品中心 <br/>roduct Center</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt>B</dt>
							<dd><a href="<?php echo U('Portal/page/index','id=4');?>">品牌故事<br/>rand story</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt>C</dt>
							<dd><a href="<?php echo U('Portal/page/index','id=3');?>">联系我们<br/>ontact us</a></dd>
						</dl>
					</li>
				</ul>
			</div>
			<!--menu 结束-->
		</div>
                
		<div class="conter">
			<!--中间开始-->
			<div class="bigbox">
                            <!--
			<div class="conterbanner">
				<img src="/trunk/tpl/YS/Public/Images/map.png">
			</div>
                            -->
                            
                            <div class="section slice no-padding">
        <div id="mapCanvas" class="map-canvas no-margin" style="height:400px;width:950px;margin: 0 auto;margin-top: 1%">
        	<script type="text/javascript">
			   var map = new BMap.Map("mapCanvas");            // 创建Map实例
			var point = new BMap.Point("115.980295", "28.699661");    // 创建点坐标
			map.centerAndZoom(point,15);                // 初始化地图,设置中心点坐标和地图级别。
			map.enableScrollWheelZoom();                  //启用滚轮放大缩小
			//添加缩放控件
			map.addControl(new BMap.NavigationControl());  
			map.addControl(new BMap.ScaleControl());  
			map.addControl(new BMap.OverviewMapControl()); 
			
			var marker = new BMap.Marker(point); // 创建标注 
			map.addOverlay(marker); // 将标注添加到地图中
			var infoWindow = new BMap.InfoWindow("江西宏开网络科技有限公司<br/><span class=''>地址：江西省南昌市火炬大街807号</span>"); // 创建信息窗口对象
			marker.openInfoWindow(infoWindow);
		</script>
        </div>
    </div>
			<!--背景图-->
			<div class="conter_left">
				<div class="conbox">
					<span><img src="/trunk/tpl/YS/Public/Images/relation.png"></span>
                                        <!--
					<span class="contact_more"><a href="#">更多</a><img src="/trunk/tpl/YS/Public/Images/more.png"></span>
                                        -->
				</div>
				<!--联系我们-->
				<div class="connav">
					<dl class="connav_box">
						<dd><a href="#">联系人:戴小姐</a></dd>
						<dd><a href="#">电话：0791-87368599</a></dd>
						<dd><a href="#">Q Q ：2022406149</a></dd>
						<dd><a href="#">网址：http://www.jxhknet.com</a></dd>
						<dd><a href="#">邮箱：407037781@qq.com</a></dd>
						<dd><a href="#">地址：南昌市高新技术开发区火炬大街807号泰豪<br />大厦B座201室</a></dd>
					</dl>
				</div>
                                
				<!--二维码-->
				<div class="Scan">
					<div class="Scan_box">
					      <img src="/trunk/tpl/YS/Public/Images/Two_dimension_code.png">
					   	  <div class="Scan_f"><a>扫一扫进入宏开养生瓮店铺
                          <span class="Scan_span"><br />（有惊喜）</a></span></div>
					</div>
				</div>
			</div>
			<!--input属性 -->
			<div class="conter_mid">
				<img src="/trunk/tpl/YS/Public/Images/wire.png">
			</div>
                        
                        <!--原来的留言页面-->
                        <!--
			<div class="conter_right" style="font-family:Microsoft YaHei;">
                            <form action="#" method="POST">
				<div class="right_box">
					<input value="" style="#5f5f5f" placeholder="姓名 Name" />
					<input value=""  placeholder="电话 Tel"  />
                                        <textarea cols="63" rows="5" placeholder="留言 Message"  style="margin-top:35px;background-color:#B2B2B2;" ></textarea>
				</div>
                            <input type="submit" value="提交"  style="width:108px;height:34px;margin-left:35%;margin-top:35px;" />
                            </form>
			</div>
                        -->
                        
                        <div class="conter_right" style="font-family:Microsoft YaHei;">
					<div class="conterbox">
					<form role="form" method="post" action="<?php echo U('api/guestbook/addmsg');?>">
						<label>姓名</label>
						<input type="text" class="span3" placeholder="Your name" name="full_name">
						<br />
						<label>邮箱</label>
						<input type="email" class="span3" placeholder="Email address" name="email">
						<br />
						<label>内容</label>
						<textarea class="span6" placeholder="Write message here..." name="msg" cols="63px" rows="5px;"></textarea>
						<br />
                                                <br />
						<label class="span5">验证码</label>
						<input type="text" class="span7" placeholder="please enter the code" name="verify" autocomplete="off" style="background:#cfcfcf;">
                                                <?php echo sp_verifycode_img('length=4&font_size=20&width=228&height=34&font_color=&background=#cfcfcf','style="cursor: pointer;vertical-align:top;" title="点击获取"');?>
                                                <!--
						<img class="span8" srcset="#" style="width:200px;height:34px; margin-top:20px;">
                                                -->
						<br/>
						<button type="submit" class="leave_word">发送留言</button>
					</form>
					</div>
			</div>
                        
                        
                        <style type="text/css">
					.span3 {
						width: 440px;
						height: 40px;
						margin-top: 34px;
						background-color: #cfcfcf;
					}
					
					.span6 {
						
						background-color: #cfcfcf;
						margin-top: 20px;
					}
					
					.span5{
					  
					}
					.span7{
						width:200px;
						height:40px;
					}
					.conter_right {
						width: 640px;
						float: right;
					}
                                        
					.conterbox{
						margin-left:80px;
					}
                                        
                                        .leave_word{
                                            margin-left:160px;
                                            margin-top:20px;
                                        }
                                        
                        </style>
                        
                        
                        
                        
		</div>
		</div>
		<!--中间结束-->
		
                <div class="footer">
			<div class="footer_box">
                            
                            <ul class="footer_nav" >
                               
                                <?php $links=sp_getlinks(); ?>
                                <?php if(is_array($links)): foreach($links as $key=>$vo): ?><li>
                                        <a href="<?php echo ($vo["link_url"]); ?>" target="<?php echo ($vo["link_target"]); ?>"><?php echo ($vo["link_name"]); ?></a>
                                    </li><?php endforeach; endif; ?>
                               
                            </ul>
                            
                            </br>
                            
                            <h5 style="color:#868686;margin:0 38%;"><?php echo ($site_copyright); ?></h5>
                            
			</div>
          
</div>

    <style type="text/css">
           .footer_nav li:first-child{margin-left:190px;border-left:1px solid #fffdfd;};
    </style>
              


               
	</body>
</html>