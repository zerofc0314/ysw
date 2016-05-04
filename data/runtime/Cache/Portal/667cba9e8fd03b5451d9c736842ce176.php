<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>

	<head>
		                <meta charset="utf-8">
		<title><?php echo ($site_name); ?></title>
                <meta name="keywords" content="<?php echo ($site_seo_keywords); ?>">
		<meta name="description" content="<?php echo ($site_seo_description); ?>">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <link href="/trunk/tpl/YS/Public/Css/base.css" type="text/css" rel="stylesheet">

		<link rel="stylesheet" href="/trunk/tpl/YS/Public/Css/Product_Center.css" type="text/css" />
		<link rel="stylesheet" href="/trunk/tpl/YS/Public/Css/swiper.3.2.7.min.css" type="text/css" />
                
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
			<!--背景图-->
			
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
                        
			<div class="conter_nav">
				<div class="conter_left">
					<!--产品分类-->
					
					<div class="classify">
						<div class="classify_box">
							<span><img src="/trunk/tpl/YS/Public/Images/classify.png"></span>
                                                        <!--
							<span class="contact_more">
                                                            <a href="#">更多<img src="/trunk/tpl/YS/Public/Images/more.png"></span>
                                                        -->
						</div>
                                            
                                                <?php $subNav=sp_get_child_terms(11); ?>
                                            
						<div class="classify_nav">
                                                       <?php if(is_array($subNav)): $i = 0; $__LIST__ = $subNav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><div>
                                                            <img src="/trunk/tpl/YS/Public/Images/icon1.png" />
                                                            <a href="<?php echo leuu('Portal/list/index',array('id'=>$v['term_id']));?>"><?php echo ($v["name"]); ?></a>
                                                        </div><?php endforeach; endif; else: echo "" ;endif; ?>
						</div>
					</div>
					<!--产品电话-->
					<div class="bigbox">
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

				</div>

				<div class="wire">
					<img src="/trunk/tpl/YS/Public/Images/wire.png">
				</div>
				<!--产品展示-->

                                <?php $data=$_SERVER['QUERY_STRING']; $data_new=strrchr($data,"="); $id=substr($data_new,1); $lists=sp_sql_posts_paged_bycatid($id,"field:tid,smeta;limit:0,6;order:post_date desc;",6); ?> 
                                
				<div class="conter_right">
					<p><img src="/trunk/tpl/YS/Public/Images/product.png" </p>
						<div class="conter_con">
							<ul class="conterbox">
                                                            <?php if(is_array($lists['posts'])): $i = 0; $__LIST__ = $lists['posts'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i; $smeta=json_decode($v['smeta'], true); ?>
                                                                
								<li>
                                                                    <a href="<?php echo leuu('Portal/article/index',array('id'=>$v['tid']));?>">
                                                                        <img src="<?php echo sp_get_asset_upload_path($smeta['thumb']);?>" />
                                                                    </a>
								</li><?php endforeach; endif; else: echo "" ;endif; ?>
							</ul>
						</div>
                                        
                                                <div  class="pagination" style="margin-top:30px;" >
                                                    <ul style="width:420px;margin-left:150px;">
                                                        <?php echo ($lists['page']); ?>
                                                    </ul>
                                                </div>
                                    
                                   
                                    <style type="text/css">
                                         .pagination ul li:frist{margin-left:50px;}
                                         .pagination ul li{height:100%;width:50px;float:left;}
                                        .conterbox li a img{padding-top:10px;}
                                    </style>  
                                        
				</div>
			</div>
		</div>
		<!--底部开始-->
		
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
              


                
		</div>
		</div>

		<script type="text/javascript" src="Static/Js/swiper.3.2.7.min.js"></script>

		<script>
			var swiper = new Swiper('.swiper-container', {
				pagination: '.swiper-pagination',
				nextButton: '.swiper-button-next',
				prevButton: '.swiper-button-prev',
				paginationClickable: true,
				spaceBetween: 30,
				centeredSlides: true,
				autoplay: 2500,
				autoplayDisableOnInteraction: false
			});
		</script>
	</body>

</html>