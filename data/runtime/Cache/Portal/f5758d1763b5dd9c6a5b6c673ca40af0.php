<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>

	<head>
                                <meta charset="utf-8">
		<title><?php echo ($site_name); ?></title>
                <meta name="keywords" content="<?php echo ($site_seo_keywords); ?>">
		<meta name="description" content="<?php echo ($site_seo_description); ?>">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <link href="/trunk/tpl/YS/Public/Css/base.css" type="text/css" rel="stylesheet">

                <link href="/trunk/tpl/YS/Public/Css/index.css" type="text/css" rel="stylesheet">
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
                    
			<!--conter_nav 开始 -->
			<div class="conter_nav">
                            
                           <?php $campaigns=sp_sql_posts_bycatid(19,'field:tid,post_title,post_date;limit:5;order:post_date desc;'); ?>
                              
				<div class="conter_left">
					<div class="conter_product">
						<span><img src="/trunk/tpl/YS/Public/Images/New_Product.png"></span>
						<span class="conter_s"><a href="<?php echo U('Portal/list/index','id=19');?>">更多<img src="/trunk/tpl/YS/Public/Images/more.png"></a></span>
					</div>
					<div class="conter_ol">
						<ol>
                                                    <?php if(is_array($campaigns)): $i = 0; $__LIST__ = $campaigns;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i; $camp_date=date('Y-m-d',$v['post_date']); $camp_title=substr($v['post_title'],0,33); ?>
                                                    <li>
                                                        <a href="<?php echo leuu('Portal/article/index',array('id'=>$v['tid']));?>">&gt; <?php echo ($camp_title); ?>...   <span class="conter_date"><?php echo ($camp_date); ?></span></a><br/>
                                                    </li><?php endforeach; endif; else: echo "" ;endif; ?>
						</ol>
					</div>
				</div>

                             
                            <?php $products=sp_sql_posts_bycatid(11,'field:tid,post_title,smeta;order:post_date desc;'); ?>
                               
                               
				<div class="conter_right">
					<div class="conter_show"><img src="/trunk/tpl/YS/Public/Images/product.png"></div>
					<div class="swiper-container" id="swiper-container2">
                                            
						<div class="swiper-wrapper" id="swiper-wrapper2">
                                     
                                                    <?php if(is_array($products)): $i = 0; $__LIST__ = $products;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; $smeta=json_decode($vo['smeta'], true); ?>
                                                       
							<div class="swiper-slide" ><!--id="swiper-slide2"-->
								<a href="<?php echo leuu('Portal/article/index',array('id'=>$vo['tid']));?>">
                                                                    <img src="<?php echo sp_get_asset_upload_path($smeta['thumb']);?>"  style="width:99px;height:99px;" />
                                                                </a>
							</div><?php endforeach; endif; else: echo "" ;endif; ?>
                                                      
						</div>
                                            
						<!-- Add Arrows 添加圆点 -->
						<div class="swiper-pagination" id="swiper-pagination2"></div>
						<!-- Add Arrows 添加箭头 -->
						<div class="swiper-button-next" id="swiper-button-next2"></div>
						<div class="swiper-button-prev" id="swiper-button-prev2"></div>
					</div>

				</div>
			</div>
			<!--conter_nav 结束 -->
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
              



                
                <script>
			var swiper = new Swiper('#swiper-container2', {
				pagination: '#swiper-pagination2',
				slidesPerView: 5,
				paginationClickable: true,
				spaceBetween: 20,
				nextButton: '#swiper-button-next2',
				prevButton: '#swiper-button-prev2',
			});
		</script>
                
                
	</body>

</html>