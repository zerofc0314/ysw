<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
		<meta name="description" content="">
		<meta name="keywords" content="">
                <link rel="stylesheet" href="/trunk/tpl/YS/Public/Css/base.css" type="text/css"/>
                <link rel="stylesheet" href="/trunk/tpl/YS/Public/Css/Company_Profile.css" type="text/css"/>
                <link rel="stylesheet" href="/trunk/tpl/YS/Public/Css/swiper.3.2.7.min.css">
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
			
		       <!--

<div class="conter_ban">
				<img src="/trunk/tpl/YS/Public/Images/content_banner.png">
			</div>

-->


<!--背景图-->

<!--
			<div class="conter_banner">
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<div class="swiper-slide"><img src="/trunk/tpl/YS/Public/Images/banner1.png"></div>
						<div class="swiper-slide"><img src="/trunk/tpl/YS/Public/Images/content_banner.png"></div>
						<div class="swiper-slide"><img src="/trunk/tpl/YS/Public/Images/banner1.png"></div>
					</div>
					<div class="swiper-pagination"></div>
					<div class="swiper-button-next">
					</div>
					<div class="swiper-button-prev">
					</div>
				</div>
			</div>
                        -->
                        
                        <div class="conter_ban">
				<div class="swiper-container" id="swiper-container1">
					<div class="swiper-wrapper">
						<div class="swiper-slide"><img src="/trunk/tpl/YS/Public/Images/content_banner.png"></div>
						<div class="swiper-slide"><img src="/trunk/tpl/YS/Public/Images/content_banner.png"></div>
						<div class="swiper-slide"><img src="/trunk/tpl/YS/Public/Images/banner1.png"></div>
					</div>
					<!-- Add Pagination 圆点-->
					<div class="swiper-pagination" id="swiper-pagination1"></div>
					<!-- Add Arrows 箭头-->
					<div class="swiper-button-next" id="swiper-button-next1">
					</div>
					<div class="swiper-button-prev" id="swiper-button-prev1">
					</div>
				</div>
			</div>

                        
                        <script src="/trunk/tpl/YS/Public/Js/swiper.3.2.7.min.js"></script>

		<script>
			var swiper = new Swiper('#swiper-container1', {
				pagination: '#swiper-pagination1',
				nextButton: '#swiper-button-next1',
				prevButton: '#swiper-button-prev1',
				paginationClickable: true,
				spaceBetween: 30,
				centeredSlides: true,
				autoplay: 2500,
				autoplayDisableOnInteraction: false
			});
		</script>	
                    
			<!--联系我们-->
			<div class="conter_nav">
                            
				<div class="conter_left">
					<div class="conter_product">
						<span><img src="/trunk/tpl/YS/Public/Images/contact.png"></span>
                                                <!--
						<span class="conter_s"><a href="">更多<img src="/trunk/tpl/YS/Public/Images/more.png"></a></span>
                                                -->
					</div>
					<div class="conter_box">
						<p>联系人：戴小姐</p>
						<p>电话：0791-87368599</p>
						<p>Q Q ：2022406149</p>
						<p><a href="http://www.jxhknet.com">网址：http://www.jxhknet.com</a></p>
						<p>邮箱：407037781@qq.com</p>
						<p>地址：南昌市高新技术开发区火炬大街807号泰豪
							<br>大厦B座201室</p>
					</div>
				</div>
				
				<div class="wire">
					<img src="/trunk/tpl/YS/Public/Images/wire.png">
				</div>
                            
				<!--公司简介-->
				<div class="conter_right" style="scroll:auto;" >
					<P><img src="/trunk/tpl/YS/Public/Images/Company_Profile-1.png"></p>
                                        
                                      <!--
					<div class="conter_content">
                                            
                                            <p>
						<span>江西宏开养生翁</span> 是以负离子养生瓮为主打产品的养生健康管理公司， 是一家致力于能量、太极能量源、生物、健康、自然、营养美容科研开发的健康管理有限公司；是中国正在崛起的科技型健康企业之星。 公司集产品研发、生产、销售策划于一体， 结合现代科技能量之丰富含量，植根五千年之传统经典，研发出独具匠心的养生神器——负离子养生瓮。不仅结实、耐用、经久不裂、有效释放及锁住巨大的能量且对于亚健康状态的改善有着十明显的作用；尤其对亚健康具有高效的调理改善作用，开辟了现代养生的崭新视野，必将为亚健康人群开辟一条新的途径，从而创造出传统与现代、文化与科学、中与西有机结合的仪器，标志着我国中医养生美容革命及蒸疗美容领域取得的高新科研成果。
						</p>
						<h4>
                     		一、负离子养生瓮特征：
                     		 1、养生缸中国（世界）美容界；
                     		  2、特有岩宝石产生纯天然负离子； 
                     		  3、特有岩宝石产生与人体频率相近似的远红外线；
                     	</h4>
						<h4>
                     		二、养生缸优势：
                     		 1、养生缸形成负压核磁共振作用；
                     		 2、养生缸的特定“缸”型构造，使负离子不逃逸；高新区格林燚犒陶瓷厂耗费高成本，
                     		 集合台湾和大陆专业人士，集体研发，将数量有限的活瓷纳宝石以纯手工打造方式制成养生瓮，
                     		 并经过国家多个权威部门检验，申请国家专利证书，有双利标志的负离子养生瓮。 它的面世引起众多养生者的追捧，
                     		 这也招致一批商家仿照生产出“有其型而无其质"，甚至对人体有害的产品，以低价抢占市场，坑害消费者，引来争议是非不断。
                     		 因为涉及商业机密以及全国一些成熟经营店家的不同意公开，
                     		 仅提供一些经同意授权可以公开同时体验的店家名册，欢迎就近实体考察，围观亲临体验。
                     	</h4>
						<h4>全国各地成熟运作实体考察店家名册：
                     		请拨打预留内线，并留下您的地址和号码。
                     		经公司内部审核后，将委派当地就近人员或将就近战略合作店家地址与您，
                     		敬请前往围观亲临体验。</h4>
                                       -->
                                       
                                     
                                       <?php $porfile=D('Posts')->field(array('post_content'))->where(array('id'=>5))->find(); ?>

                                            <?php echo ($porfile["post_content"]); ?>
                                       
                                       
					</div>
				</div>
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