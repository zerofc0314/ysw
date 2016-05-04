<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<!-- Set render engine for 360 browser -->
	<meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- HTML5 shim for IE8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <![endif]-->

	<link href="/statics/simpleboot/themes/<?php echo C('SP_ADMIN_STYLE');?>/theme.min.css" rel="stylesheet">
    <link href="/statics/simpleboot/css/simplebootadmin.css" rel="stylesheet">
    <link href="/statics/js/artDialog/skins/default.css" rel="stylesheet" />
    <link href="/statics/simpleboot/font-awesome/4.2.0/css/font-awesome.min.css"  rel="stylesheet" type="text/css">
    <style>
		.length_3{width: 180px;}
		form .input-order{margin-bottom: 0px;padding:3px;width:40px;}
		.table-actions{margin-top: 5px; margin-bottom: 5px;padding:0px;}
		.table-list{margin-bottom: 0px;}
	</style>
	<!--[if IE 7]>
	<link rel="stylesheet" href="/statics/simpleboot/font-awesome/4.2.0/css/font-awesome-ie7.min.css">
	<![endif]-->
<script type="text/javascript">
//全局变量
var GV = {
    DIMAUB: "/",
    JS_ROOT: "statics/js/",
    TOKEN: ""
};
</script>
<!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/statics/js/jquery.js"></script>
    <script src="/statics/js/wind.js"></script>
    <script src="/statics/simpleboot/bootstrap/js/bootstrap.min.js"></script>
<?php if(APP_DEBUG): ?><style>
		#think_page_trace_open{
			z-index:9999;
		}
	</style><?php endif; ?>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<script type="text/javascript" src="lib/PIE_IE678.js"></script>
<![endif]-->
<link href="/tpl_admin/simpleboot//Static/css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="/tpl_admin/simpleboot//Static/css/H-ui.admin.css" rel="stylesheet" type="text/css" />
<link href="/tpl_admin/simpleboot//Static/css/style.css" rel="stylesheet" type="text/css" />
<link href="/tpl_admin/simpleboot//Static/lib/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet" type="text/css" />
<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>角色管理</title>
</head>
<body>
<div class="pd-20">
    <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 菜单管理 <span class="c-gray en">&gt;</span> 前台分类 <a class="btn btn-success radius r mr-20" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
	<div class="cl pd-5 bg-1 bk-gray"> <span class="l"> <a href="javascript:;" onclick="datadel()" class="btn btn-danger radius">前台分类</a> <a class="btn btn-primary radius" href="javascript:;" onclick="admin_role_add('添加分类','<?php echo U('navcat/add');?>','800')"><i class="Hui-iconfont">&#xe600;</i> 添加分类</a> </span> <span class="r">共有数据：<strong>54</strong> 条</span> </div>
        
        <form class="form-horizontal J_ajaxForm" action="" method="post">
			<table class="table table-hover table-bordered">
				<thead>
					<tr>
						<th width="100">ID</th>
						<th>名称</th>
						<th>描述</th>
						<th width="120">主菜单</th>
						<th width="120">操作</th>
					</tr>
				</thead>
				<?php if(is_array($navcats)): foreach($navcats as $key=>$vo): ?><tr>
					<td><?php echo ($vo["navcid"]); ?></td>
					<td><?php echo ($vo["name"]); ?></td>
					<td><?php echo ($vo["remark"]); ?></td>
					<td><?php $mainmenu=$vo['active']?"是":"否"; ?> <?php echo ($mainmenu); ?></td>
					<td>
						<!--<a href="<?php echo U('navcat/edit',array('id'=>$vo['navcid']));?>">--><a href="javascript:;" onclick="admin_role_edit('修改','<?php echo U('navcat/edit',array('id'=>$vo['navcid']));?>','800')">修改</a>|
						<!--<a href="<?php echo U('navcat/delete',array('id'=>$vo['navcid']));?>" class="J_ajax_del">--><a title="删除" href="javascript:;" onclick="admin_role_del(this,'1')" class="ml-5" style="text-decoration:none">删除</a>
					</td>
				</tr><?php endforeach; endif; ?>
			</table>
		</form>
        
</div>
<script type="text/javascript" src="/tpl_admin/simpleboot//Static/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="/tpl_admin/simpleboot//Static/lib/layer/1.9.3/layer.js"></script> 
<script type="text/javascript" src="/tpl_admin/simpleboot//Static/lib/My97DatePicker/WdatePicker.js"></script> 
<script type="text/javascript" src="/tpl_admin/simpleboot//Static/js/H-ui.js"></script> 
<script type="text/javascript" src="/tpl_admin/simpleboot//Static/js/H-ui.admin.js"></script> 
<script type="text/javascript">
/*-添加*/
function admin_role_add(title,url,w,h){
	layer_show(title,url,w,h);
}
/*-修改*/
function admin_role_edit(title,url,id,w,h){
	layer_show(title,url,w,h);
}
/*-删除*/
function admin_role_del(obj,id){
	layer.confirm('角色删除须谨慎，确认要删除吗？',function(index){
                
		//此处请求后台程序，下方是成功后的前台处理……
		
		
		$(obj).parents("tr").remove();
		layer.msg('已删除!',{icon:1,time:1000});
	});
}
</script>
</body>
</html>