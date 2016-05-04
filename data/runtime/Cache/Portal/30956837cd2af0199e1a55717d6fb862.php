<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>

	<head>
		                <meta charset="utf-8">
		<title><?php echo ($site_name); ?></title>
                <meta name="keywords" content="<?php echo ($site_seo_keywords); ?>">
		<meta name="description" content="<?php echo ($site_seo_description); ?>">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <link href="/trunk/tpl/YS/Public/Css/base.css" type="text/css" rel="stylesheet">

		<link rel="stylesheet" href="/trunk/tpl/YS/Public/Css/story.css" type="text/css" />
                <link rel="stylesheet" href="/trunk/tpl/YS/Public/Css/swiper.3.2.7.min.css" />
                <link rel="stylesheet" href="/trunk/tpl/YS/Public/Css/97zzw_com.css" />
                <script type="text/javascript" src="/trunk/tpl/YS/Public/Js/jquery.min.js"></script>
                <script type="text/javascript" src="/trunk/tpl/YS/Public/Js/jquery.easing.1.3.js"></script>
                <script type="text/javascript" src="/trunk/tpl/YS/Public/Js/jquery.roundabout-1.0.min.js"></script>
                
                <style type="text/css">
                    .conter_ban{margin-top:44px;}
                </style>
                
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

                        
                        <!--品牌故事:旋转木马-->
			<div class="conter_brand">
				<p>
                                     <img src="/trunk/tpl/YS/Public/Images/brand.png">
				</p>
				<div id="featured-area">
					<ul>
						<li>
							<a href="#"><img src="/trunk/tpl/YS/Public/Images/brand1.png"/></a>
						</li>
						<li>
							<a href="#"><img src="/trunk/tpl/YS/Public/Images/brand3.png"/></a>
						</li>
						<li>
							<a href="#"><img src="/trunk/tpl/YS/Public/Images/brand2.png" /></a>
						</li>
					</ul>
				</div>
			</div>
                        
                        
                    
			<div class="conter_product">
				<p><img src="/trunk/tpl/YS/Public/Images/product.png"></p>
				<div class="conter_h">
					<h3>采用岩宝石、岩宝粉、优质陶土为主原料</h3>
					<h4>养生瓮外观整体呈卵形，中空，瓮体以养生岩宝粉与陶土混合后经过成泥、雕刻、烧制、制模、风干、打磨等九道工序精心烧制而成，其内壁以特定规则密布2200颗铜钱般大小的养生岩宝石。  </h4>
				</div>
				<div class="conter_box">
					<img src="/trunk/tpl/YS/Public/Images/product1.png">
					<img src="/trunk/tpl/YS/Public/Images/product-2.png">
					<img src="/trunk/tpl/YS/Public/Images/product-3.png">
				</div>
			</div>
                        

			<div class="conter_production">
				<div class="box">
					<p><img src="/trunk/tpl/YS/Public/Images/production.png"></p>
				</div>
				<div class="production-box">
					<div class="bigbox">
						<span><img src="/trunk/tpl/YS/Public/Images/production_1.png"></span>
						<span><a href="#">1、揉泥（排空泥料里的空气）</span>
					</div>
					<div class="bigbox">
						<span><img src="/trunk/tpl/YS/Public/Images/production_2.png"></span>
						<span class="span_a"><a href="#">2、做坯（塑造养生瓮基本形体）</span>
					</div>
					<div class="bigbox">
						<span><img src="/trunk/tpl/YS/Public/Images/production_3.png"></span>
						<span><a href="#">3、晒坯（将成型的养生瓮坯晾晒）</span>
					</div>
					<div class="bigbox">
						<span><img src="/trunk/tpl/YS/Public/Images/production_4.png"></span>
						<span><a href="#">1、揉泥（排空泥料里的空气）</span>
					</div>
					<div class="bigbox">
						<span><img src="/trunk/tpl/YS/Public/Images/production_5.png"></span>
						<span class="span_a"><a href="#">2、做坯（塑造养生瓮基本形体）</span>
					</div>
					<div class="bigbox">
						<span><img src="/trunk/tpl/YS/Public/Images/production_6.png"></span>
						<span><a href="#">3、晒坯（将成型的养生瓮坯晾晒）</span>
					</div>
				</div>
			</div>
			<div class="conter_CertificateNumber">
				<div class="CertificateNumber_box">
					<p><img src="/trunk/tpl/YS/Public/Images/Certificate_Number.png"></p>
				</div>
				<div class="C_bigbox">
					<div class="CM_box">
						<p><img src="/trunk/tpl/YS/Public/Images/Certificate_Number_1.png"></p>
					</div>
					<div class="CM_box">
						<p><img src="/trunk/tpl/YS/Public/Images/Certificate_Number_2.png"></p>
					</div>
					<div class="CM_top">
						<p><img src="/trunk/tpl/YS/Public/Images/Certificate_Number_3.png"></p>
						<p><img src="/trunk/tpl/YS/Public/Images/Certificate_Number_4.png"></p>
					</div>
				</div>
			</div>
		</div>
                
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
              


                
                <script type="text/javascript">
			$(document).ready(function() {
				$('#featured-area ul').roundabout({
					easing: 'easeOutInCirc',
					duration: 600
				});
			});
		</script>
                
	</body>

</html>