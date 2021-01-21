<?php /*a:1:{s:70:"/var/www/html/seckill-system/application/admin/view/main/add_role.html";i:1611195968;}*/ ?>
<!DOCTYPE html>
<html class="x-admin-sm">
    
    <head>
        <meta charset="UTF-8">
        <title>淘多多商城-用户登录</title>
        <meta name="renderer" content="webkit|ie-comp|ie-stand">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
        <meta http-equiv="Cache-Control" content="no-siteapp" />
        <link rel="stylesheet" href="/static/css/font.css">
        <link rel="stylesheet" href="/static/css/login.css">
        <link rel="stylesheet" href="/static/css/xadmin.css">
        <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
        <script src="/static/lib/layui/layui.js" charset="utf-8"></script>
        <!--[if lt IE 9]>
        <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
        <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <div class="layui-fluid">
            <div class="layui-row">
                <form class="layui-form" action="/index.php/admin/Main/do_add_role"  method="post">
                    <div class="layui-form-item">
                        <label for="L_email" class="layui-form-label">
                            <span class="x-red">*</span>角色名</label>
                        <div class="layui-input-inline">
                            <input type="text" name="rolename" required="" lay-verify="required" autocomplete="off" class="layui-input"></div>
                    </div>
                    <div class="layui-form-item layui-form-text">
                        <label class="layui-form-label">描述</label>
                        <div class="layui-input-block">
                          <textarea name="desc" placeholder="请输入内容" class="layui-textarea"></textarea>
                        </div>
                      </div>
                    <div class="layui-form-item">
                        <label for="L_email" class="layui-form-label">
                            <span class="x-red">*</span>拥有的权限规则</label>
                        <div class="layui-input-inline">
                            <input type="text" name="rules" required="" lay-verify="required|check" autocomplete="off" class="layui-input"></div>
                            <div class="layui-form-mid layui-word-aux">规则数字请用,隔开</div>
                    </div>
                    <div class="layui-form-item">
                        <label for="L_repass" class="layui-form-label"></label>
                        <button class="layui-btn" lay-filter="add" lay-submit="">增加</button></div>
                </form>
            </div>
        </div>
        <script type="text/javascript">
    
            layui.use("form", function() {
                var form = layui.form;
                var laydate = layui.laydate;
                form.verify({
                    check: function(value){
                        //alert(/^[a-zA-Z]\w{2,14}$/.test(value));
                        if(! /^(\d+[,])*(\d+)$/.test(value)){
                            return '数字请用,隔开';
                        }
                    }
                });
            });
        
        
          </script>
    </body>

</html>