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
     <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 内容管理 <span class="c-gray en">&gt;</span> 页面管理 <a class="btn btn-success radius r mr-20" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
	<div class="cl pd-5 bg-1 bk-gray"> <span class="l"> <a href="javascript:;" onclick="datadel()" class="btn btn-danger radius"> 页面管理</a> <a class="btn btn-primary radius" href="javascript:;" onclick="admin_role_add('添加页面','<?php echo U('AdminPage/add');?>','900')"><i class="Hui-iconfont">&#xe600;</i> 添加页面</a> </span> <span class="r">共有数据：<strong>54</strong> 条</span> </div>
        
        <form class="well form-search" method="post" action="<?php echo u('AdminPage/index');?>">
    <div class="search_type cc mb10">
      <div class="mb10"> 
        <span class="mr20">时间：
        <input type="text" name="start_time" class="input length_2 J_date" value="<?php echo ($formget["start_time"]); ?>" style="width:80px;" autocomplete="off">-<input autocomplete="off" type="text" class="input length_2 J_date" name="end_time" value="<?php echo ($formget["end_time"]); ?>" style="width:80px;">
        <!-- 
        <select class="select_2" name="posids"style="width:70px;">
          <option value='' selected>全部</option>
        </select>
        <select class="select_2" name="searchtype" style="width:70px;">
          <option value='0' >标题</option>
        </select>
         -->
                           关键字：
        <input type="text" class="input length_2" name="keyword" style="width:200px;" value="<?php echo ($formget["keyword"]); ?>" placeholder="请输入关键字...">
        <button class="btn btn-primary">搜索</button>
        </span>
      </div>
    </div>
  </form>
  <form class="J_ajaxForm" action="" method="post">
  		<div class="table-actions">
			<button class="btn btn-primary btn-small J_ajax_submit_btn" type="submit" data-action="<?php echo U('AdminPage/delete');?>" data-subcheck="true" data-msg="你确定删除吗？">删除</button>
		</div>
      <table class="table table-hover table-bordered table-list">
        <thead>
	          <tr>
	            <th width="16"><label><input type="checkbox" class="J_check_all" data-direction="x" data-checklist="J_check_x"></label></th>
	            <th width="100">ID</th>
	            <th>标题</th>
	            <!-- <th>点击量</th> -->
	            <th width="80">发布人</th>
	            <th width="120"><span>发布时间</span></th>
	            <th width="120">操作</th>
	          </tr>
	    </thead>
        	<?php if(is_array($posts)): foreach($posts as $key=>$vo): ?><tr>
		            <td><input type="checkbox" class="J_check" data-yid="J_check_y" data-xid="J_check_x" name="ids[]" value="<?php echo ($vo["id"]); ?>"></td>
		            <td><a><?php echo ($vo["id"]); ?></a></td>
		            <td>
		            	<a href="<?php echo U('portal/page/index',array('id'=>$vo['id']));?>" target="_blank"><span><?php echo ($vo["post_title"]); ?></span></a>
		            </td>
		           <!--  <td>0</td> -->
		            <td><?php echo ($users[$vo['post_author']]['user_login']); ?></td>
		            <td><?php echo ($vo["post_date"]); ?></td>
		            <td>
                                <!--<a href="<?php echo U('AdminPage/edit',array('id'=>$vo['id']));?>">--><a href="javascript:;" onclick="admin_role_edit('修改','<?php echo U('AdminPage/edit',array('id'=>$vo['id']));?>','1000')">修改</a>|
                                <!--<a href="<?php echo U('AdminPage/delete',array('id'=>$vo['id']));?>" class="J_ajax_del" >--><a href="javascript:;" onclick="admin_role_del(this,'<?php echo U('AdminPage/delete',array('id'=>$vo['id']));?>','1')">删除</a>
					</td>
	          	</tr><?php endforeach; endif; ?>
          	<tfoot>
	          <tr>
	            <th width="16"><label><input type="checkbox" class="J_check_all" data-direction="x" data-checklist="J_check_x"></label></th>
	            <th width="100">ID</th>
	            <th>标题</th>
	            <!-- <th>点击量</th> -->
	            <th width="80">发布人</th>
	            <th width="120"><span>发布时间</span></th>
	            <th width="120">操作</th>
	          </tr>
		    </tfoot>
          </table>
          <div class="table-actions">
			<button class="btn btn-primary btn-small J_ajax_submit_btn" type="submit" data-action="<?php echo U('AdminPage/delete');?>" data-subcheck="true" data-msg="你确定删除吗？">删除</button>
		</div>
      		<div class="pagination"><?php echo ($Page); ?></div>
  </form>
              
        <!--
	<table class="table table-border table-bordered table-hover table-bg">
		<thead>
			<tr>
				<th scope="col" colspan="6">角色管理</th>
			</tr>
			<tr class="text-c">
				<th width="25"><input type="checkbox" value="" name=""></th>
				<th width="40">ID</th>
				<th width="200">角色名</th>
				<th>用户列表</th>
				<th width="300">描述</th>
				<th width="70">操作</th>
			</tr>
		</thead>
		<tbody>
			<tr class="text-c">
				<td><input type="checkbox" value="" name=""></td>
				<td>1</td>
				<td>超级管理员</td>
				<td><a href="#">admin</a></td>
				<td>拥有至高无上的权利</td>
				<td class="f-14"><a title="编辑" href="javascript:;" onclick="admin_role_edit('角色编辑','admin-role-add.html','1')" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> <a title="删除" href="javascript:;" onclick="admin_role_del(this,'1')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
			</tr>
			<tr class="text-c">
				<td><input type="checkbox" value="" name=""></td>
				<td>2</td>
				<td>总编</td>
				<td><a href="#">张三</a></td>
				<td>具有添加、审核、发布、删除内容的权限</td>
				<td class="f-14"><a title="编辑" href="javascript:;" onclick="admin_role_edit('角色编辑','admin-role-add.html','2')" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> <a title="删除" href="javascript:;" onclick="admin_role_del(this,'1')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
			</tr>
			<tr class="text-c">
				<td><input type="checkbox" value="" name=""></td>
				<td>3</td>
				<td>栏目主辑</td>
				<td><a href="#">李四</a>，<a href="#">王五</a></td>
				<td>只对所在栏目具有添加、审核、发布、删除内容的权限</td>
				<td class="f-14"><a title="编辑" href="javascript:;" onclick="admin_role_edit('角色编辑','admin-role-add.html','3')" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> <a title="删除" href="javascript:;" onclick="admin_role_del(this,'1')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
			</tr>
			<tr class="text-c">
				<td><input type="checkbox" value="" name=""></td>
				<td>4</td>
				<td>栏目编辑</td>
				<td><a href="#">赵六</a>，<a href="#">钱七</a></td>
				<td>只对所在栏目具有添加、删除草稿等权利。</td>
				<td class="f-14"><a title="编辑" href="javascript:;" onclick="admin_role_edit('角色编辑','admin-role-add.html','4')" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> <a title="删除" href="javascript:;" onclick="admin_role_del(this,'1')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
			</tr>
		</tbody>
	</table>-->
</div>
<script type="text/javascript" src="/tpl_admin/simpleboot//Static/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="/tpl_admin/simpleboot//Static/lib/layer/1.9.3/layer.js"></script> 
<script type="text/javascript" src="/tpl_admin/simpleboot//Static/lib/My97DatePicker/WdatePicker.js"></script> 
<script type="text/javascript" src="/tpl_admin/simpleboot//Static/js/H-ui.js"></script> 
<script type="text/javascript" src="/tpl_admin/simpleboot//Static/js/H-ui.admin.js"></script> 
<script type="text/javascript">
/*管理员-角色-添加*/
function admin_role_add(title,url,w,h){
	layer_show(title,url,w,h);
}
/*管理员-角色-编辑*/
function admin_role_edit(title,url,id,w,h){
	layer_show(title,url,w,h);
}
/*管理员-角色-删除*/
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