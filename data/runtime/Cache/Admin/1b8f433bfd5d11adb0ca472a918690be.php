<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="renderer" content="webkit|ie-comp|ie-stand">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
        <meta http-equiv="Cache-Control" content="no-siteapp" />
        <!--[if lt IE 9]>
        <script type="text/javascript" src="/trunk/tpl_admin/simpleboot/Static/lib/html5.js"></script>
        <script type="text/javascript" src="/trunk/tpl_admin/simpleboot/Static/lib/respond.min.js"></script>
        <script type="text/javascript" src="/trunk/tpl_admin/simpleboot/Static/lib/PIE_IE678.js"></script>
        <![endif]-->
        <link href="/trunk/tpl_admin/simpleboot/Static/css/H-ui.min.css" rel="stylesheet" type="text/css" />
        <link href="/trunk/tpl_admin/simpleboot/Static/css/H-ui.login.css" rel="stylesheet" type="text/css" />
        <link href="/trunk/tpl_admin/simpleboot/Static/css/style.css" rel="stylesheet" type="text/css" />
        <link href="/trunk/tpl_admin/simpleboot/Static/lib/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet" type="text/css" />
        <!--[if IE 6]>
        <script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
        <script>DD_belatedPNG.fix('*');</script>
        <![endif]-->
        <style type="text/css">
            .input-text{
            font-size: 12px;}
            .input-text.size-L, .btn.size-L{
                  font-size: 12px;
                  height: 40px;
            }
        </style>
        <title>后台登录</title>
    </head>
    <body>
        <input type="hidden" id="TenantId" name="TenantId" value="" />
        <div class="header"></div>
        <div class="loginWraper">
           <div class="loginTitle" >
              <img src="/trunk/tpl_admin/simpleboot/Static/images/logo-6.png"/>
           </div>
            <div id="loginform" class="loginBox">
                <form class="form form-horizontal" action="<?php echo U('public/dologin');?>" method="post">
                    <div class="row cl">
                        <label class="form-label col-3"><i class="Hui-iconfont">&#xe60d;</i></label>
                        <div class="formControls col-8">
                            <input id="" name="username" type="text" placeholder="账户" class="input-text size-L">
                        </div>
                    </div>
                    <div class="row cl">
                        <label class="form-label col-3"><i class="Hui-iconfont">&#xe60e;</i></label>
                        <div class="formControls col-8">
                            <input id="" name="password" type="password" placeholder="密码" class="input-text size-L">
                        </div>
                    </div>
                    <div class="row cl">
                        <div class="formControls col-8 col-offset-3">
                            <?php echo sp_verifycode_img('length=4&font_size=25&width=238&height=50','style="cursor: pointer;" title="点击获取"');?>
                        </div>
                    </div>
                    <div class="row cl">
                        <label class="form-label col-3"></label>
                        <div class="formControls col-8">
                            <input class="input-text size-L" type="text" name="verify" placeholder="请输入验证码" />
                        </div>
                    </div>

                    <div class="row">
                        <div class="formControls col-8 col-offset-3">
                            <label for="online">
                                <input type="checkbox" name="online" id="online" value="">
                                使我保持登录状态</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="formControls col-8 col-offset-3">
                            <input name="" type="submit" class="btn btn-success radius size-L" value="&nbsp;登&nbsp;&nbsp;&nbsp;&nbsp;录&nbsp;">
                            <input name="" type="reset" class="btn btn-default radius size-L" value="&nbsp;取&nbsp;&nbsp;&nbsp;&nbsp;消&nbsp;">
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="footer">Copyright 江西宏开网络科技有限公司</div>
        <script type="text/javascript" src="/trunk/tpl_admin/simpleboot//Static/lib/jquery/1.9.1/jquery.min.js"></script> 
        <script type="text/javascript" src="/trunk/tpl_admin/simpleboot//Static/js/H-ui.js"></script> 
    </body>
</html>